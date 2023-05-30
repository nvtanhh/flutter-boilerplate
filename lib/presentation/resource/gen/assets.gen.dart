/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsEnvGen {
  const $AssetsEnvGen();

  /// File path: assets/env/.env
  String get env => 'assets/env/.env';

  /// File path: assets/env/.env.example
  String get envExample => 'assets/env/.env.example';

  /// List of all assets
  List<String> get values => [env, envExample];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/arrow-left-regular.svg
  SvgGenImage get arrowLeftRegular =>
      const SvgGenImage('assets/icons/arrow-left-regular.svg');

  /// File path: assets/icons/bars-regular.svg
  SvgGenImage get barsRegular =>
      const SvgGenImage('assets/icons/bars-regular.svg');

  /// File path: assets/icons/eye-regular.svg
  SvgGenImage get eyeRegular =>
      const SvgGenImage('assets/icons/eye-regular.svg');

  /// File path: assets/icons/eye-slash-regular.svg
  SvgGenImage get eyeSlashRegular =>
      const SvgGenImage('assets/icons/eye-slash-regular.svg');

  /// File path: assets/icons/face-smile-light.svg
  SvgGenImage get faceSmileLight =>
      const SvgGenImage('assets/icons/face-smile-light.svg');

  /// File path: assets/icons/house-regular.svg
  SvgGenImage get houseRegular =>
      const SvgGenImage('assets/icons/house-regular.svg');

  /// File path: assets/icons/message-dots-solid.svg
  SvgGenImage get messageDotsSolid =>
      const SvgGenImage('assets/icons/message-dots-solid.svg');

  /// File path: assets/icons/paper-plane-top-solid.svg
  SvgGenImage get paperPlaneTopSolid =>
      const SvgGenImage('assets/icons/paper-plane-top-solid.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        arrowLeftRegular,
        barsRegular,
        eyeRegular,
        eyeSlashRegular,
        faceSmileLight,
        houseRegular,
        messageDotsSolid,
        paperPlaneTopSolid
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/app_icon_sample.jpg
  AssetGenImage get appIconSample =>
      const AssetGenImage('assets/images/app_icon_sample.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [appIconSample];
}

class Assets {
  Assets._();

  static const $AssetsEnvGen env = $AssetsEnvGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated Clip? clipBehavior,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
