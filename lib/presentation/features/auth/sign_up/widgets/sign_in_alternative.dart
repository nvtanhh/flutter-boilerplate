part of 'sign_up_widgets.dart';

class SignInAlternative extends StatelessWidget {
  const SignInAlternative({super.key});

  void _onSignInPressed(BuildContext context) {
    context.replaceNamed(AppPage.signIn.name);
  }

  @override
  Widget build(BuildContext context) {
    return StyledText(
      text: context.l10n.sign_up__already_have_account,
      style: AppTextStyles.bodyMedium.regular.toColor(AppColorsConstants.gray2),
      tags: {
        'sign_in': StyledTextActionTag(
          (_, __) => _onSignInPressed(context),
          style: AppTextStyles.bodyMedium.bold.toColor(AppColorsConstants.black),
        ),
      },
    );
  }
}
