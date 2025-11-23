part of 'sign_in_page.dart';

class _SignInDecorationTexts extends StatelessWidget {
  const _SignInDecorationTexts();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          context.l10n.sign_in__title,
          style: AppTextStyles.headlineMedium.bold,
        ),
        AppSpacing.gapH8,
        Text(
          context.l10n.sign_in__desc,
          style: AppTextStyles.bodyLarge,
        ),
      ],
    );
  }
}

class _SignInForm extends StatelessWidget {
  const _SignInForm();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildEmailField(context),
        AppSpacing.gapH12,
        _buildPasswordField(context),
      ],
    );
  }

  Widget _buildEmailField(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      buildWhen: (previous, current) =>
          previous.email != current.email || previous.hadBeenSubmitted != current.hadBeenSubmitted,
      builder: (context, state) {
        return AppTextField(
          hintText: context.l10n.field__email,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          autofocus: true,
          errorText: !state.hadBeenSubmitted
              ? null
              : state.email.isEmpty
                  ? context.l10n.field__email_required
                  : !state.isEmailValid
                      ? context.l10n.field__email_invalid
                      : null,
          onChanged: (value) => context.read<SignInBloc>().add(EmailChanged(value)),
        );
      },
    );
  }

  Widget _buildPasswordField(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      buildWhen: (previous, current) =>
          previous.password != current.password || previous.hadBeenSubmitted != current.hadBeenSubmitted,
      builder: (context, state) {
        return AppTextField(
          hintText: context.l10n.field__password,
          obscureText: true,
          textInputAction: TextInputAction.done,
          errorText: !state.hadBeenSubmitted
              ? null
              : state.password.isEmpty
                  ? context.l10n.field__password_invalid
                  : null,
          onChanged: (value) => context.read<SignInBloc>().add(PasswordChanged(value)),
        );
      },
    );
  }
}

class _SignInButton extends StatelessWidget {
  const _SignInButton();

  void _onSignInPressed(BuildContext context) {
    context.read<SignInBloc>().add(const SignInSubmitted());
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppButton.primary(
          width: double.infinity,
          height: Sizes.s48,
          label: context.l10n.button__sign_in.toUpperCase(),
          onPressed: () => _onSignInPressed(context),
        ),
        if (kDebugMode) ...[
          AppSpacing.gapH16,
          AppButton.outline(
            width: double.infinity,
            height: Sizes.s48,
            label: 'example@gmail.com/Qwerty@123',
            onPressed: () {
              context.read<SignInBloc>()
                ..add(const EmailChanged('example@gmail.com'))
                ..add(const PasswordChanged('Qwerty@123'))
                ..add(const SignInSubmitted());
            },
          ),
        ],
      ],
    );
  }
}

class _PolicyTexts extends StatelessWidget {
  const _PolicyTexts();

  @override
  Widget build(BuildContext context) {
    return StyledText(
      text: context.l10n.sign_in__policy,
      style: AppTextStyles.bodyMedium,
      tags: {
        'policy': StyledTextActionTag(
          (_, __) => _onPolicyPressed(context),
          style: AppTextStyles.bodyMedium.bold,
        ),
        'terms': StyledTextActionTag(
          (_, __) => _onTermsPressed(context),
          style: AppTextStyles.bodyMedium.bold,
        ),
      },
    );
  }

  void _onPolicyPressed(BuildContext context) {
    IntentUtil.openWebviewURL(context, 'https://avnon.co');
  }

  void _onTermsPressed(BuildContext context) {
    IntentUtil.openWebviewURL(context, 'https://avnon.co');
  }
}

class _ForgotPasswordButton extends StatelessWidget {
  const _ForgotPasswordButton();

  void _onForgotPasswordPressed(BuildContext context) {}

  @override
  Widget build(BuildContext context) {
    return Text(
      context.l10n.sign_in__forgot_password,
      style: AppTextStyles.bodyLarge.underline.bold,
    ).clickable(() => _onForgotPasswordPressed(context));
  }
}

class _SignInErrorText extends StatelessWidget {
  const _SignInErrorText();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      buildWhen: (previous, current) => previous.failureReason != current.failureReason,
      builder: (context, state) {
        if (state.failureReason == null) {
          return AppSpacing.emptyBox;
        }

        return Container(
          padding: AppSpacing.edgeInsetsAll16,
          margin: AppSpacing.edgeInsetsOnlyBottom16,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.s4),
            color: AppColorsConstants.error.withValues(alpha: 0.2),
          ),
          child: Text(
            context.l10n.sign_in__invalid_credentials,
            style: AppTextStyles.bodyMedium.toColor(AppColorsConstants.error),
          ),
        );
      },
    );
  }
}
