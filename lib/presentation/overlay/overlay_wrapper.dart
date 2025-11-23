import 'package:flutter/material.dart' hide Notification;
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/configs/di/di.dart';
import '../../core/extensions/all.dart';
import '../common_blocs/connectivity/connectivity_cubit.dart';
import '../common_blocs/overlay/overlay_bloc.dart';
import '../common_widgets/all.dart';
import '../resource/styles/gaps.dart';
import '_page_loading_overlay.dart';

class AppOverlayWrapper extends StatelessWidget {
  final Widget child;
  const AppOverlayWrapper({required this.child, super.key});

  // void _hideNotification() {
  //   getIt.get<AppOverlayBloc>().add(const AppOverlayEvent.hideNotification());
  // }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: getIt.get<AppOverlayBloc>()),
        BlocProvider(create: (context) => getIt.get<ConnectivityCubit>()),
      ],
      child: Stack(
        children: [
          child,
          _buildToastOverlay(),
          // _buildNotificationOverlay(),
          // _buildAppUpdateDialog(),
          // _buildConnectivityOverlay(),
          _buildLoadingOverlay(),
        ],
      ),
    );
  }

  Widget _buildToastOverlay() {
    return BlocBuilder<AppOverlayBloc, AppOverlayState>(
      buildWhen: (previous, current) => previous.toastMessage != current.toastMessage,
      builder: (context, state) {
        if (state.toastMessage == null) {
          return AppSpacing.emptyBox;
        }

        return _buildToastMessage(
          context,
          state.toastMessage!.message,
          state.toastMessage!.type,
        );
      },
    );
  }

  Widget _buildToastMessage(
    BuildContext context,
    String message,
    ToastType type,
  ) {
    return Positioned(
      left: 0,
      right: 0,
      top: kToolbarHeight + Sizes.s8,
      child: Padding(
        padding: AppSpacing.edgeInsetsAll16,
        child: Align(
          alignment: Alignment.topCenter,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: AppRadius.borderRadius8,
              boxShadow: [
                BoxShadow(
                  color: context.appColors.secondaryTextColor.withValues(alpha: 0.2),
                  offset: const Offset(0, 2),
                  blurRadius: 2,
                ),
              ],
            ),
            child: AppToast(
              type: type,
              message: message,
              onClosedByUser: () => getIt.get<AppOverlayBloc>().add(const AppOverlayEvent.hideToast()),
            ),
          ).animate().slide(
                duration: const Duration(milliseconds: 150),
                begin: const Offset(0, -1),
                end: const Offset(0, 0),
              ),
        ),
      ),
    );
  }

  // Widget _dialogWrapper({
  //   required Widget child,
  //   required BuildContext context,
  // }) {
  //   return Positioned.fill(
  //     child: Container(
  //       color: Colors.black54,
  //       alignment: Alignment.center,
  //       child: child,
  //     ),
  //   );
  // }

  // Widget _buildAppUpdateDialog() {
  //   return BlocBuilder<AppBloc, AppState>(
  //     buildWhen: (previous, current) =>
  //         previous.serverConfig != current.serverConfig,
  //     builder: (context, state) {
  //       if (!state.serverConfig.isForceUpdate ||
  //           state.serverConfig.isMaintaining) {
  //         return AppSpacing.emptyBox;
  //       }

  //       return _dialogWrapper(
  //         context: context,
  //         child: AppUtils.alertDialog(
  //           context: context,
  //           icon: Assets.illus.appUpdate.svg(
  //             width: 60.0,
  //             height: 60.0,
  //             colorFilter: ColorFilter.mode(
  //               context.colorTheme.icNormalTertiary,
  //               BlendMode.srcIn,
  //             ),
  //           ),
  //           title: context.l10n.app_update__title,
  //           message: context.l10n.app_update__desc,
  //           actionWidget: Padding(
  //             padding: AppSpacing.edgeInsetsH12,
  //             child: Text(
  //               context.l10n.app_update__update_btn,
  //               textAlign: TextAlign.center,
  //               style: context.textTheme.b14BaseMedium
  //                   .toColor(context.colorTheme.txtNormalBrand),
  //             ),
  //           ).clickable(
  //             () {
  //               IntentUtil.launchURL(
  //                 url: Platform.isAndroid
  //                     ? AppConstants.androidAppUrl
  //                     : AppConstants.iosAppUrl,
  //               );
  //             },
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }

//   Widget _buildNotificationOverlay() {
//     return BlocBuilder<AppOverlayBloc, AppOverlayState>(
//       buildWhen: (previous, current) =>
//           previous.notification != current.notification,
//       builder: (context, state) {
//         if (state.notification == null) {
//           return AppSpacing.emptyBox;
//         }

//         return Positioned(
//           top: 0,
//           left: 0,
//           right: 0,
//           child: InAppNotification(
//             key: ValueKey(state.notification!.id),
//             notification: state.notification!,
//             onTap: () {
//               state.notificationWrapper!.onTap();
//               _hideNotification();
//             },
//             onClosedByUser: _hideNotification,
//           ),
//         )
//             .animate()
//             .slide(
//               duration: const Duration(milliseconds: 150),
//               begin: const Offset(0, -1),
//               end: const Offset(0, 0),
//             )
//             .then(
//               delay: const Duration(
//                 milliseconds:
//                     DurationConstants.defaultNotificationDurationInMs -
//                         (150 * 2),
//               ),
//             )
//             .slide(
//               duration: const Duration(milliseconds: 150),
//               begin: const Offset(0, 0),
//               end: const Offset(0, -1),
//             );
//       },
//     );
//   }

  Widget _buildLoadingOverlay() {
    return BlocBuilder<AppOverlayBloc, AppOverlayState>(
      buildWhen: (previous, current) => previous.isLoading != current.isLoading,
      builder: (context, state) {
        if (!state.isLoading) {
          return AppSpacing.emptyBox;
        }

        return const PageLoadingOverlay();
      },
    );
  }

//   Widget _buildConnectivityOverlay() {
//     return BlocBuilder<ConnectivityCubit, ConnectivityState>(
//       builder: (context, state) {
//         if (state.connectionType == ConnectionType.none) {
//           return _dialogWrapper(
//             context: context,
//             child: const _NoInternetConnectionDialog(),
//           );
//         }

//         return AppSpacing.emptyBox;
//       },
//     );
//   }
}

// class _NoInternetConnectionDialog extends StatefulWidget {
//   const _NoInternetConnectionDialog();

//   @override
//   State<_NoInternetConnectionDialog> createState() =>
//       __NoInternetConnectionDialogState();
// }

// class __NoInternetConnectionDialogState
//     extends State<_NoInternetConnectionDialog>
//     with SingleTickerProviderStateMixin {
//   late final AnimationController controller;

//   final retryingNotifier = ValueNotifier<bool>(false);

//   @override
//   void initState() {
//     controller = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 1500),
//     )..forward();

//     controller.addStatusListener(
//       (status) {
//         if (status == AnimationStatus.completed) {
//           Future.delayed(
//             const Duration(milliseconds: 300),
//             () {
//               controller.forward(from: 0);
//             },
//           );
//         }
//       },
//     );

//     super.initState();
//   }

//   Future<void> onRetry() async {
//     retryingNotifier.value = true;
//     unawaited(controller.forward());
//     await getIt.get<ConnectivityCubit>().checkConnectivity();
//     await Future.delayed(const Duration(milliseconds: 300), () {
//       retryingNotifier.value = false;
//     });
//   }

//   @override
//   void dispose() {
//     controller.dispose();
//     retryingNotifier.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AppUtils.alertDialog(
//       insetPadding: AppSpacing.edgeInsetsH32,
//       context: context,
//       icon: Assets.gifs.wifi.lottie(
//         width: 80.0,
//         height: 80.0,
//         controller: controller,
//       ),
//       title: context.l10n.connectivity__no_internet_title,
//       message: context.l10n.connectivity__no_internet_message,
//       positiveText: context.l10n.button__retry,
//       actionWidget: buildRetryButton(context),
//     );
//   }

//   Widget buildRetryButton(BuildContext context) {
//     return ValueListenableBuilder<bool>(
//       valueListenable: retryingNotifier,
//       builder: (_, isRetrying, __) {
//         return AppButton.primary(
//           text: context.l10n.button__retry,
//           isLoading: isRetrying,
//           onTap: onRetry,
//         );
//       },
//     );
//   }
// }
