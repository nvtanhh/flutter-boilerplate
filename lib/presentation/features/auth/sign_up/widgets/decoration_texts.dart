part of 'sign_up_widgets.dart';

class SignUpDecorationTexts extends StatelessWidget {
  const SignUpDecorationTexts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          context.l10n.sign_up__title,
          style: AppTextStyles.headlineMedium.bold,
        ),
        AppSpacing.gapH8,
        Text(
          context.l10n.sign_up__desc,
          style: AppTextStyles.bodyLarge,
        ),
      ],
    );
  }
}
