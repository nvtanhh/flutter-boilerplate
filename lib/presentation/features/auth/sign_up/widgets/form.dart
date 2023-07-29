part of 'sign_up_widgets.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildFirstNameField(context),
        AppSpacing.gapH12,
        _buildEmailField(context),
        AppSpacing.gapH12,
        _buildPasswordField(context),
        AppSpacing.gapH12,
        _buildConfirmPasswordField(context),
      ],
    );
  }

  Widget _buildFirstNameField(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) =>
          previous.username != current.username || previous.hadBeenSubmitted != current.hadBeenSubmitted,
      builder: (context, state) {
        return AppTextField(
          autofocus: true,
          hintText: context.l10n.field__first_name,
          textCapitalization: TextCapitalization.words,
          textInputAction: TextInputAction.next,
          onChanged: (value) => context.read<SignUpBloc>().add(UserNameChanged(value)),
        );
      },
    );
  }

  Widget _buildEmailField(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) =>
          previous.email != current.email ||
          previous.hadBeenSubmitted != current.hadBeenSubmitted ||
          current.isEmailAlreadyInUse,
      builder: (context, state) {
        return AppTextField(
          hintText: context.l10n.field__email,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          errorText: !state.hadBeenSubmitted
              ? null
              : state.email.isEmpty
                  ? context.l10n.field__email_required
                  : !state.isEmailValid
                      ? context.l10n.field__email_invalid
                      : state.isEmailAlreadyInUse
                          ? context.l10n.field__email_already_taken
                          : null,
          onChanged: (value) => context.read<SignUpBloc>().add(EmailChanged(value)),
        );
      },
    );
  }

  Widget _buildPasswordField(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) =>
          previous.password != current.password ||
          previous.confirmPassword != current.confirmPassword ||
          previous.isPasswordVisible != current.isPasswordVisible ||
          previous.hadBeenSubmitted != current.hadBeenSubmitted ||
          current.isPasswordTooWeak,
      builder: (context, state) {
        return AppTextField(
          hintText: context.l10n.field__password,
          obscureText: !state.isPasswordVisible,
          textInputAction: TextInputAction.next,
          suffixIcon: _buildIcon(
            onTap: () => context.read<SignUpBloc>().add(IsPasswordVisibleChanged(!state.isPasswordVisible)),
            child: !state.isPasswordVisible ? AppIcons.eyeRegular : AppIcons.eyeOffRegular,
          ),
          errorText: !state.hadBeenSubmitted
              ? null
              : state.password.isEmpty
                  ? context.l10n.field__password_required
                  : !state.isPasswordValid
                      ? context.l10n.field__password_invalid
                      : null,
          onChanged: (value) => context.read<SignUpBloc>().add(PasswordChanged(value)),
        );
      },
    );
  }

  Widget _buildConfirmPasswordField(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      buildWhen: (previous, current) =>
          previous.confirmPassword != current.confirmPassword ||
          previous.password != current.password ||
          previous.isConfirmPasswordVisible != current.isConfirmPasswordVisible ||
          previous.hadBeenSubmitted != current.hadBeenSubmitted,
      builder: (context, state) {
        return AppTextField(
          hintText: context.l10n.field__confirm_password,
          obscureText: !state.isConfirmPasswordVisible,
          textInputAction: TextInputAction.done,
          suffixIcon: _buildIcon(
            onTap: () =>
                context.read<SignUpBloc>().add(IsConfirmPasswordVisibleChanged(!state.isConfirmPasswordVisible)),
            child: !state.isConfirmPasswordVisible ? AppIcons.eyeRegular : AppIcons.eyeOffRegular,
          ),
          errorText: !state.hadBeenSubmitted
              ? null
              : state.confirmPassword.isEmpty
                  ? context.l10n.field__confirm_password_required
                  : !state.isPasswordMatch
                      ? context.l10n.field__confirm_password_not_match
                      : null,
          onChanged: (value) => context.read<SignUpBloc>().add(ConfirmPasswordChanged(value)),
        );
      },
    );
  }

  Widget _buildIcon({required Object child, required VoidCallback onTap}) {
    return AppIcon(
      icon: child,
      padding: AppSpacing.edgeInsetsAll12,
      onTap: onTap,
    );
  }
}
