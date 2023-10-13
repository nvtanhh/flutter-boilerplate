import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/exceptions/exceptions.dart';
import '../../../../../core/utils/validation_utils.dart';
import '../../../../../domain/usecases/auth/sign_in_usecase.dart';
import '../../../../base/bloc/base_bloc.dart';

part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

@injectable
class SignInBloc extends BaseBloc<SignInEvent, SignInState> {
  SignInBloc(this._signInUseCase) : super(SignInState.initial()) {
    on<EmailChanged>(_onEmailChanged);
    on<PasswordChanged>(_onPasswordChanged);
    on<SignInSubmitted>(_onSignInSubmitted);
  }

  final SignInUseCase _signInUseCase;

  void _onEmailChanged(EmailChanged event, Emitter<SignInState> emit) {
    emit(state.copyWith(email: event.email, failureReason: null));
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<SignInState> emit) {
    emit(state.copyWith(password: event.password, failureReason: null));
  }

  Future<void> _onSignInSubmitted(
    SignInSubmitted event,
    Emitter<SignInState> emit,
  ) async {
    emit(state.copyWith(submitCount: state.submitCount + 1));
    if (!state.isFormValid || state.isSubmitting) {
      return;
    }

    await runBlocCatching(
      action: () async {
        await _signInUseCase.execute(SignInParams(state.email, state.password));
      },
      doOnError: (exception) async {
        var failureReason = SignInFailureReason.unknown;

        if (exception is ApiException) {
          failureReason = SignInFailureReason.invalidCredentials;
        }

        emit(state.copyWith(isSubmitting: false, failureReason: failureReason));
      },
    );
  }
}
