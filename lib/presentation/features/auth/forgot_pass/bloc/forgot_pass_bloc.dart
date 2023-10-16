import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/utils/validation_util.dart';
import '../../../../../domain/usecases/auth/forgot_password_usecase.dart';
import '../../../../base/bloc/base_bloc.dart';

part 'forgot_pass_bloc.freezed.dart';
part 'forgot_pass_event.dart';
part 'forgot_pass_state.dart';

@injectable
class ForgotPassBloc extends BaseBloc<ForgotPassEvent, ForgotPassState> {
  ForgotPassBloc(this._forgotPasswordUseCase) : super(ForgotPassState.initial()) {
    on<EmailChanged>(_onEmailChanged);
    on<RequestSubmitted>(_onSignInSubmitted);
  }

  final ForgotPasswordUseCase _forgotPasswordUseCase;

  void _onEmailChanged(EmailChanged event, Emitter<ForgotPassState> emit) {
    emit(state.copyWith(email: event.email, failureReason: null));
  }

  Future<void> _onSignInSubmitted(RequestSubmitted event, Emitter<ForgotPassState> emit) async {
    emit(state.copyWith(submitCount: state.submitCount + 1));
    if (!state.isEmailValid || state.isSubmitting) {
      return;
    }

    await runBlocCatching(
      action: () async {
        emit(state.copyWith(isSubmitting: true));
        await _forgotPasswordUseCase.execute(ForgotPasswordParams(state.email));
      },
      doOnSuccessOrError: () async {
        emit(state.copyWith(isSubmitting: false, requestSuccess: true));
      },
    );
  }
}
