import 'package:flutter/material.dart';

import '../resource/all.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.controller,
    this.focusNode,
    this.hintText,
    this.errorText,
    this.obscureText = false,
    this.keyboardType,
    this.textInputAction,
    this.onFieldSubmitted,
    this.onChanged,
    this.onEditingComplete,
    this.autofocus = false,
    this.autocorrect = true,
    this.enabled = true,
    this.maxLines = 1,
    this.minLines,
    this.prefixIcon,
    this.suffixIcon,
    this.isDense = false,
    this.border,
    this.textCapitalization = TextCapitalization.none,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? hintText;
  final String? errorText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onFieldSubmitted;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final bool autofocus;
  final bool autocorrect;
  final bool enabled;
  final int maxLines;
  final int? minLines;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool isDense;
  final InputBorder? border;
  final TextCapitalization textCapitalization;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      focusNode: focusNode,
      decoration: InputDecoration(
        isDense: isDense,
        hintText: hintText,
        hintStyle: AppTextStyles.bodyMedium.copyWith(color: Colors.grey),
        errorText: errorText,
        errorStyle: AppTextStyles.bodySmall.copyWith(color: Colors.red),
        prefixIcon: prefixIcon,
        prefixIconConstraints:
            const BoxConstraints(minWidth: Sizes.s20, minHeight: Sizes.s20),
        suffixIcon: suffixIcon,
        suffixIconConstraints:
            const BoxConstraints(minWidth: Sizes.s20, minHeight: Sizes.s20),
        border: _defaultBorder(),
        enabledBorder: _defaultBorder(),
        focusedBorder: _defaultBorder(),
        errorBorder: _defaultBorder(),
        focusedErrorBorder: _defaultBorder(),
      ),
      textCapitalization: textCapitalization,
      obscureText: obscureText,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      onSubmitted: onFieldSubmitted,
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      autofocus: autofocus,
      enabled: enabled,
      maxLines: maxLines,
      minLines: minLines,
    );
  }

  InputBorder _defaultBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: errorText == null ? Colors.grey : Colors.red,
      ),
    );
  }
}
