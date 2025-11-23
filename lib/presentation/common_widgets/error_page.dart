import 'package:flutter/material.dart';

import '../../core/extensions/all.dart';
import '../resource/all.dart';
import 'button.dart';

/// Error page widget for 404 and other routing errors
class ErrorPage extends StatelessWidget {
  const ErrorPage({
    super.key,
    this.title,
    this.message,
    this.icon,
    this.onGoHome,
    this.showGoHomeButton = true,
  });

  /// Error title (defaults to "Page not found")
  final String? title;

  /// Error message (defaults to the error details)
  final String? message;

  /// Custom icon (defaults to error_outline)
  final IconData? icon;

  /// Callback when go home button is pressed
  final VoidCallback? onGoHome;

  /// Show go home button (defaults to true)
  final bool showGoHomeButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(Sizes.s24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Icon
                Icon(
                  icon ?? Icons.error_outline_rounded,
                  size: 80,
                  color: Theme.of(context).colorScheme.error,
                ),

                AppSpacing.gapH24,

                // Title
                Text(
                  title ?? 'Page not found',
                  style: context.textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),

                AppSpacing.gapH12,

                // Message
                if (message != null)
                  Text(
                    message!,
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),

                AppSpacing.gapH32,

                // Go Home Button
                if (showGoHomeButton)
                  SizedBox(
                    width: double.infinity,
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 300),
                      child: AppButton.primary(
                        label: 'Go Home',
                        onPressed: onGoHome ?? () => Navigator.of(context).pop(),
                        width: double.infinity,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Error page for 404 - Page not found
class NotFoundPage extends StatelessWidget {
  const NotFoundPage({
    super.key,
    this.path,
    this.onGoHome,
  });

  final String? path;
  final VoidCallback? onGoHome;

  @override
  Widget build(BuildContext context) {
    return ErrorPage(
      title: '404',
      message: path != null ? 'The page "$path" could not be found' : 'The page you are looking for does not exist',
      icon: Icons.search_off_rounded,
      onGoHome: onGoHome,
    );
  }
}

/// Error page for unauthorized access
class UnauthorizedPage extends StatelessWidget {
  const UnauthorizedPage({
    super.key,
    this.onGoHome,
  });

  final VoidCallback? onGoHome;

  @override
  Widget build(BuildContext context) {
    return ErrorPage(
      title: '401',
      message: 'You need to sign in to access this page',
      icon: Icons.lock_outline_rounded,
      onGoHome: onGoHome,
    );
  }
}

/// Error page for forbidden access
class ForbiddenPage extends StatelessWidget {
  const ForbiddenPage({
    super.key,
    this.onGoHome,
  });

  final VoidCallback? onGoHome;

  @override
  Widget build(BuildContext context) {
    return ErrorPage(
      title: '403',
      message: 'You do not have permission to access this page',
      icon: Icons.block_rounded,
      onGoHome: onGoHome,
    );
  }
}

/// Error page for server errors
class ServerErrorPage extends StatelessWidget {
  const ServerErrorPage({
    super.key,
    this.onGoHome,
  });

  final VoidCallback? onGoHome;

  @override
  Widget build(BuildContext context) {
    return ErrorPage(
      title: '500',
      message: 'Something went wrong on our end. Please try again later',
      icon: Icons.cloud_off_rounded,
      onGoHome: onGoHome,
    );
  }
}
