import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:styled_text/styled_text.dart';

import '../../../../core/extensions/extensions.dart';
import '../../../../core/utils/intent_util.dart';
import '../../../base/base_page_state.dart';
import '../../../common_widgets/common_widgets.dart';
import '../../../resource/resource.dart';
import 'bloc/sign_in_bloc.dart';

part 'sign_in_widgets.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends BasePageState<SignInPage, SignInBloc> {
  @override
  bool get useLoadingIndicator => true;

  @override
  Widget buildPage(BuildContext context) {
    return BlocListener<SignInBloc, SignInState>(
      listenWhen: (previous, current) =>
          previous.isSignInSuccess != current.isSignInSuccess,
      listener: (context, state) {
        if (state.isSignInSuccess) {
          context.popUntilFirst();
        }
      },
      child: CommonScaffold(
        hideKeyboardWhenTouchOutside: true,
        appBar: CommonAppBar(),
        body: ListView(
          padding: AppSpacing.edgeInsetsH16,
          physics: const ClampingScrollPhysics(),
          children: const [
            _SignInDecorationTexts(),
            AppSpacing.gapH24,
            _SignInErrorText(),
            _SignInForm(),
            AppSpacing.gapH16,
            _SignInButton(),
            AppSpacing.gapH16,
            _PolicyTexts(),
            AppSpacing.gapH16,
            _ForgotPasswordButton(),
            AppSpacing.gapH56,
          ],
        ),
      ),
    );
  }
}
