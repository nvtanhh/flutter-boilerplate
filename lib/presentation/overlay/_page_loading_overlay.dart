import 'package:flutter/material.dart';

import '../../core/extensions/context_extensions.dart';
import '../common_widgets/loading.dart';
import '../resource/styles/gaps.dart';

class PageLoadingOverlay extends StatelessWidget {
  const PageLoadingOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.appColors.primaryTextColor.withOpacity(0.5),
      alignment: Alignment.center,
      child: IntrinsicWidth(
        child: IntrinsicHeight(
          child: Container(
            padding: const EdgeInsets.all(Sizes.s32),
            decoration: BoxDecoration(
              color: context.appColors.primaryColor,
              borderRadius: AppRadius.borderRadius12,
              boxShadow: [
                BoxShadow(
                  color: context.appColors.secondaryTextColor.withOpacity(0.2),
                  blurRadius: 4.0,
                  offset: const Offset(0, 4.0),
                ),
              ],
            ),
            child: const AppDefaultLoading(),
          ),
        ),
      ),
    );
  }
}
