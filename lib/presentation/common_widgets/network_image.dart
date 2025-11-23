import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../resource/all.dart';

/// Default cache width when no width/height is provided
/// This value will be multiplied by device pixel ratio
const int _kDefaultImageCacheWidth = 200;

/// Optimized network image widget with memory-efficient caching
///
/// Key features:
/// - Automatic cache size calculation based on device pixel ratio
/// - BoxFit-aware optimization (cover, fill, contain, etc.)
/// - Memory and disk cache optimization
/// - Smart cache strategy based on original image aspect ratio
///
/// Best practices:
/// - Always provide width/height when known in advance
/// - Pass originalAspectRatio from server to optimize cache
/// - With BoxFit.cover: Set BOTH width and height
/// - With other BoxFit modes: Set at least one dimension
class AppNetworkImage extends StatelessWidget {
  const AppNetworkImage(
    this.url, {
    super.key,
    this.fit,
    this.placeholder,
    this.errorWidget,
    this.imageBuilder,
    this.width,
    this.height,
    this.originalAspectRatio,
    this.fadeOutDuration,
    this.fadeOutCurve = Curves.easeOut,
    this.useOldImageOnUrlChange = false,
    this.loadingBackgroundColor,
    this.borderRadius,
  });

  final String url;
  final BoxFit? fit;
  final Widget? placeholder;
  final Widget? errorWidget;
  final Widget Function(
    BuildContext context,
    ImageProvider imageProvider,
  )? imageBuilder;
  final double? width;
  final double? height;

  /// Original image aspect ratio from server (width/height)
  /// Used for optimizing cache size with different BoxFit modes
  final double? originalAspectRatio;

  final Duration? fadeOutDuration;
  final Curve fadeOutCurve;
  final bool useOldImageOnUrlChange;
  final Color? loadingBackgroundColor;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    // If width/height is known → calculate directly
    if ((width != null && width != double.infinity) || (height != null && height != double.infinity)) {
      return _buildImageWithKnownSize(context);
    }

    // If no width/height → use LayoutBuilder to get constraints
    return LayoutBuilder(
      builder: (ctx, constraints) {
        return _buildImageWithConstraints(ctx, constraints);
      },
    );
  }

  /// Build image when width/height is known in advance
  Widget _buildImageWithKnownSize(BuildContext context) {
    final dpr = MediaQuery.of(context).devicePixelRatio;
    final boxW = width ?? 0.0;
    final boxH = height ?? 0.0;
    final cacheSizes = _calculateCacheSizes(boxW, boxH, dpr);

    return _buildCachedImage(
      cacheSizes.$1, // memW
      cacheSizes.$2, // memH
      cacheSizes.$3, // diskW
      cacheSizes.$4, // diskH
    );
  }

  /// Build image when size needs to be obtained from constraints
  Widget _buildImageWithConstraints(
    BuildContext context,
    BoxConstraints constraints,
  ) {
    final dpr = MediaQuery.of(context).devicePixelRatio;
    final boxW = constraints.maxWidth.isFinite ? constraints.maxWidth : 0.0;
    final boxH = constraints.maxHeight.isFinite ? constraints.maxHeight : 0.0;
    final cacheSizes = _calculateCacheSizes(boxW, boxH, dpr);

    return _buildCachedImage(
      cacheSizes.$1, // memW
      cacheSizes.$2, // memH
      cacheSizes.$3, // diskW
      cacheSizes.$4, // diskH
    );
  }

  /// Calculate cache sizes based on BoxFit and dimensions
  ///
  /// Returns: (memWidth, memHeight, diskWidth, diskHeight)
  (int?, int?, int?, int?) _calculateCacheSizes(
    double boxW,
    double boxH,
    double dpr,
  ) {
    int? memW;
    int? memH;
    int? diskW;
    int? diskH;

    if (fit == BoxFit.cover) {
      // BoxFit.cover: Set BOTH width and height
      // Cover needs to fill entire container, Flutter will scale and crop
      if (boxW > 0 && boxH > 0) {
        memW = (boxW * dpr).round();
        memH = (boxH * dpr).round();
        diskW = memW;
        diskH = memH;
      } else if (boxW > 0 || boxH > 0) {
        // Only one dimension available
        final dimension = boxW > 0 ? boxW : boxH;
        final target = (dimension * dpr).round();
        if (boxW > 0) {
          memW = target;
          diskW = target;
        } else {
          memH = target;
          diskH = target;
        }
      } else {
        // Fallback to default
        memW = (_kDefaultImageCacheWidth * dpr).round();
        diskW = memW;
      }
    } else if (fit == BoxFit.fill) {
      // BoxFit.fill: Set both width & height
      if (boxW > 0) {
        memW = (boxW * dpr).round();
        diskW = memW;
      }
      if (boxH > 0) {
        memH = (boxH * dpr).round();
        diskH = memH;
      }
    } else {
      // BoxFit.contain/scaleDown/none: Consider aspect ratio to choose dimension
      // Reason: Flutter scales while maintaining aspect ratio, only need to set appropriate dimension
      if (boxW > 0 && boxH > 0) {
        if (originalAspectRatio != null) {
          // Has aspect ratio from server → optimize based on aspect ratio
          final containerRatio = boxW / boxH;
          if (originalAspectRatio! > containerRatio) {
            // Image wider than container → width is limiting factor
            memW = (boxW * dpr).round();
            diskW = memW;
          } else {
            // Image taller than container → height is limiting factor
            memH = (boxH * dpr).round();
            diskH = memH;
          }
        } else {
          // No aspect ratio → Set smallest side (safe approach)
          final smallest = boxW < boxH ? boxW : boxH;
          final target = (smallest * dpr).round();

          if (boxW < boxH) {
            memW = target;
            diskW = target;
          } else {
            memH = target;
            diskH = target;
          }
        }
      } else if (boxW > 0) {
        // Only width available
        memW = (boxW * dpr).round();
        diskW = memW;
      } else if (boxH > 0) {
        // Only height available
        memH = (boxH * dpr).round();
        diskH = memH;
      }
    }

    return (memW, memH, diskW, diskH);
  }

  /// Build CachedNetworkImage widget with calculated cache sizes
  Widget _buildCachedImage(int? memW, int? memH, int? diskW, int? diskH) {
    Widget image = CachedNetworkImage(
      imageUrl: url,
      width: width,
      height: height,
      fit: fit,
      placeholder: (_, __) => placeholder ?? _buildDefaultPlaceholder(),
      errorWidget: (_, __, ___) => _buildErrorWidget(),
      imageBuilder: imageBuilder,
      fadeOutDuration: fadeOutDuration,
      fadeInDuration: Duration.zero,
      fadeOutCurve: fadeOutCurve,
      useOldImageOnUrlChange: useOldImageOnUrlChange,
      // Optimize memory cache: limit decode size
      memCacheWidth: memW,
      memCacheHeight: memH,
      // Optimize disk cache: limit storage size
      maxWidthDiskCache: diskW,
      maxHeightDiskCache: diskH,
    );

    if (borderRadius != null) {
      image = ClipRRect(
        borderRadius: borderRadius!,
        child: image,
      );
    }

    return image;
  }

  Widget _buildDefaultPlaceholder() {
    return Container(
      decoration: BoxDecoration(
        color: loadingBackgroundColor ?? AppColorsConstants.lightGray,
        borderRadius: borderRadius,
      ),
      width: width,
      height: height,
    );
  }

  Widget _buildErrorWidget() {
    return errorWidget ?? AppSpacing.emptyBox;
  }
}

/// Custom CachedNetworkImageProvider for advanced use cases
class AppCachedNetworkImageProvider extends CachedNetworkImageProvider {
  const AppCachedNetworkImageProvider(
    super.url, {
    super.maxWidth,
    super.maxHeight,
  });
}

/// Extension to calculate cache size based on device pixel ratio
///
/// Example:
/// - Widget width = 250px
/// - Device pixel ratio = 2.0 (iPhone SE)
/// - Cache size = 250 * 2.0 = 500px
///
/// This ensures images are decoded at appropriate size for the screen,
/// avoiding oversized decoding (memory waste) or undersized (quality loss)
extension ImageCacheSizeExtension on num {
  /// Calculate cache size based on device pixel ratio
  int cacheSize(BuildContext context) {
    return (this * MediaQuery.of(context).devicePixelRatio).round();
  }
}
