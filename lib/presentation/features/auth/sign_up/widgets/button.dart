part of 'sign_up_widgets.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  void _onSignUpPressed(BuildContext context) {
    context.read<SignUpBloc>().add(const SignUpSubmitted());
  }

  @override
  Widget build(BuildContext context) {
    return AppButton.primary(
      label: context.l10n.button__sign_up.toUpperCase(),
      onPressed: () => _onSignUpPressed(context),
      height: Sizes.s48,
      width: double.infinity,
    );
  }
}
