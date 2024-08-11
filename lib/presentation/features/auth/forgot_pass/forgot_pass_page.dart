import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extensions/all.dart';
import '../../../base/base_page_state.dart';
import '../../../common_widgets/all.dart';
import '../../../resource/resource.dart';
import 'bloc/forgot_pass_bloc.dart';

class ForgotPassPage extends StatefulWidget {
  const ForgotPassPage({super.key});

  @override
  State<ForgotPassPage> createState() => _ForgotPassPageState();
}

class _ForgotPassPageState
    extends BasePageState<ForgotPassPage, ForgotPassBloc> {
  @override
  bool get useLoadingIndicator => true;

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      hideKeyboardWhenTouchOutside: true,
      appBar: CommonAppBar(),
      body: BlocBuilder<ForgotPassBloc, ForgotPassState>(
        buildWhen: (previous, current) =>
            previous.requestSuccess != current.requestSuccess,
        builder: (context, state) {
          if (state.requestSuccess) {
            return const _RequestSuccessWidget();
          }

          return ListView(
            padding: AppSpacing.edgeInsetsH16,
            physics: const ClampingScrollPhysics(),
            children: const [
              _ForgotPassDecorationTexts(),
              AppSpacing.gapH24,
              _ForgotPassForm(),
              AppSpacing.gapH16,
              _RequestButton(),
              AppSpacing.gapH32,
              _LoginButton(),
              AppSpacing.gapH56,
            ],
          );
        },
      ),
    );
  }
}

class _ForgotPassDecorationTexts extends StatelessWidget {
  const _ForgotPassDecorationTexts();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          context.l10n.forgot_password__title,
          style: AppTextStyles.headlineMedium.bold,
        ),
      ],
    );
  }
}

class _ForgotPassForm extends StatelessWidget {
  const _ForgotPassForm();

  @override
  Widget build(BuildContext context) {
    return _buildEmailField(context);
  }

  Widget _buildEmailField(BuildContext context) {
    return BlocBuilder<ForgotPassBloc, ForgotPassState>(
      buildWhen: (previous, current) =>
          previous.email != current.email ||
          previous.hadBeenSubmitted != current.hadBeenSubmitted,
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
          onChanged: (value) =>
              context.read<ForgotPassBloc>().add(EmailChanged(value)),
        );
      },
    );
  }
}

class _RequestButton extends StatelessWidget {
  const _RequestButton();

  void _onSentRequestPressed(BuildContext context) {
    context.read<ForgotPassBloc>().add(const RequestSubmitted());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForgotPassBloc, ForgotPassState>(
      buildWhen: (previous, current) =>
          previous.isEmailValid != current.isEmailValid,
      builder: (context, state) {
        return AppButton.primary(
          height: Sizes.s48,
          width: double.infinity,
          label: context.l10n.button__send_request.toUpperCase(),
          onPressed:
              state.isEmailValid ? () => _onSentRequestPressed(context) : null,
        );
      },
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton();

  @override
  Widget build(BuildContext context) {
    return Text(
      context.l10n.button__sign_in,
      style: AppTextStyles.bodyLarge.primaryColor.bold.underline,
    ).clickable(context.pop);
  }
}

class _RequestSuccessWidget extends StatelessWidget {
  const _RequestSuccessWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSpacing.edgeInsetsH16,
      child: Column(
        children: [
          Text(
            context.l10n.forgot_password__success_title,
            style: AppTextStyles.headlineMedium.bold,
          ),
          AppSpacing.gapH24,
          Text(
            context.l10n.forgot_password__success_desc,
            style: AppTextStyles.bodyMedium,
          ),
          AppSpacing.gapH24,
          _buildLoginButton(context),
        ],
      ),
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return AppButton.primary(
      label: context.l10n.button__sign_in.toUpperCase(),
      onPressed: context.pop,
      height: Sizes.s48,
      width: double.infinity,
    );
  }
}
