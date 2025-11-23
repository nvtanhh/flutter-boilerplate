import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../base/base_page_state.dart';
import '../../../common_widgets/all.dart';
import '../../../resource/all.dart';
import 'bloc/sign_up_bloc.dart';
import 'widgets/sign_up_widgets.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends BasePageState<SignUpPage, SignUpBloc> {
  @override
  bool get useLoadingIndicator => true;

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      hideKeyboardWhenTouchOutside: true,
      appBar: CommonAppBar(),
      body: BlocBuilder<SignUpBloc, SignUpState>(
        buildWhen: (previous, current) => previous.isSignUpSuccess != current.isSignUpSuccess,
        builder: (context, state) {
          if (state.isSignUpSuccess) {
            return const SignUpSuccessWidget();
          }

          return ListView(
            padding: AppSpacing.edgeInsetsH16,
            physics: const ClampingScrollPhysics(),
            children: const [
              SignUpDecorationTexts(),
              AppSpacing.gapH24,
              SignUpForm(),
              AppSpacing.gapH16,
              SignUpButton(),
              AppSpacing.gapH16,
              SignInAlternative(),
              AppSpacing.gapH56,
            ],
          );
        },
      ),
    );
  }
}
