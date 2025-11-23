part of 'sign_up_widgets.dart';

class SignUpSuccessWidget extends StatelessWidget {
  const SignUpSuccessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSpacing.edgeInsetsH16,
      child: Column(
        children: [
          Text(
            context.l10n.sign_up__success_title,
            style: AppTextStyles.headlineMedium.bold,
            textAlign: TextAlign.center,
          ),
          AppSpacing.gapH24,
          Text(
            context.l10n.sign_up__success_desc,
            style: AppTextStyles.bodyLarge,
            textAlign: TextAlign.center,
          ),
          AppSpacing.gapH24,
          AppButton.primary(
            label: context.l10n.button__done.toUpperCase(),
            onPressed: () => context.go(AppPage.signIn.path),
            width: double.infinity,
            height: Sizes.s48,
          ),
        ],
      ),
    );
  }
}
