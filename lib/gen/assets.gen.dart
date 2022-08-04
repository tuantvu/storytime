/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesGuiGen get gui => const $AssetsImagesGuiGen();
  $AssetsImagesLogoGen get logo => const $AssetsImagesLogoGen();
}

class $AssetsImagesGuiGen {
  const $AssetsImagesGuiGen();

  /// File path: assets/images/gui/adult-reading-to-a-child-read.png
  AssetGenImage get adultReadingToAChildRead => const AssetGenImage(
      'assets/images/gui/adult-reading-to-a-child-read.png');

  /// File path: assets/images/gui/background.jpeg
  AssetGenImage get background =>
      const AssetGenImage('assets/images/gui/background.jpeg');

  /// File path: assets/images/gui/ball-children-fun-games-happy-kids-playing-icon-622848.png
  AssetGenImage get ballChildrenFunGamesHappyKidsPlayingIcon622848 =>
      const AssetGenImage(
          'assets/images/gui/ball-children-fun-games-happy-kids-playing-icon-622848.png');

  /// File path: assets/images/gui/children-reading-book-png_100049.jpeg
  AssetGenImage get childrenReadingBookPng100049 => const AssetGenImage(
      'assets/images/gui/children-reading-book-png_100049.jpeg');

  /// File path: assets/images/gui/children_play.png
  AssetGenImage get childrenPlay =>
      const AssetGenImage('assets/images/gui/children_play.png');

  /// File path: assets/images/gui/kisspng-imagination-book.png
  AssetGenImage get kisspngImaginationBook =>
      const AssetGenImage('assets/images/gui/kisspng-imagination-book.png');

  /// File path: assets/images/gui/reading-list.png
  AssetGenImage get readingList =>
      const AssetGenImage('assets/images/gui/reading-list.png');
}

class $AssetsImagesLogoGen {
  const $AssetsImagesLogoGen();

  /// File path: assets/images/logo/storytime_logo.jpeg
  AssetGenImage get storytimeLogo =>
      const AssetGenImage('assets/images/logo/storytime_logo.jpeg');
}

class Assets {
  Assets._();

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

  String get path => _assetName;

  String get keyName => _assetName;
}
