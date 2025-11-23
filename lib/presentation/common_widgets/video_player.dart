import 'dart:io';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../../core/extensions/all.dart';
import '../resource/styles/styles.dart';
import 'all.dart';

class AppVideoPlayer extends StatefulWidget {
  const AppVideoPlayer(
    this.url, {
    super.key,
    this.width,
    this.height,
    this.borderRadius = BorderRadius.zero,
    this.isFile = false,
    this.autoPlay = false,
    this.loadingColor,
    this.onTap,
    this.onPlayingStateCallback,
    this.isThumbnailMode = false,
    this.fit,
  });

  final String url;
  final double? width;
  final double? height;
  final BorderRadius borderRadius;
  final bool isFile;
  final bool autoPlay;
  final Color? loadingColor;
  final VoidCallback? onTap;
  final void Function(bool isPlaying)? onPlayingStateCallback;
  final bool isThumbnailMode;
  final BoxFit? fit;

  @override
  State<AppVideoPlayer> createState() => AppVideoPlayerState();
}

class AppVideoPlayerState extends State<AppVideoPlayer> with AutomaticKeepAliveClientMixin {
  late VideoPlayerController _controller;
  final ValueNotifier<bool> _isPlayingNotifier = ValueNotifier(false);

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _controller = widget.isFile
        ? VideoPlayerController.file(File(widget.url))
        : VideoPlayerController.networkUrl(Uri.parse(widget.url));
    _controller.initialize().then((_) {
      if (widget.autoPlay) {
        play();
      }
      setState(() {});
    });

    _controller.addListener(() {
      _isPlayingNotifier.value = _controller.value.isPlaying;
      widget.onPlayingStateCallback?.call(_controller.value.isPlaying);
    });
  }

  @override
  void dispose() {
    pause();
    _controller.dispose();
    _isPlayingNotifier.dispose();
    super.dispose();
  }

  void play() {
    _controller.play();
  }

  void pause() {
    _controller.pause();
  }

  void _onTapVideo() {
    if (_controller.value.isInitialized && _controller.value.isPlaying) {
      pause();
    } else {
      play();
    }

    widget.onTap?.call();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final child = _controller.value.isInitialized ? _buildBody() : _buildLoading();

    if (widget.isThumbnailMode) {
      return child;
    }

    return VisibilityDetector(
      key: Key(widget.url),
      onVisibilityChanged: (info) {
        if (_controller.value.isPlaying && info.visibleFraction == 0) {
          pause();
        }
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          child,
          if (_controller.value.isInitialized) _buildPlayButton(),
        ],
      ),
    );
  }

  SizedBox _buildLoading() {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: const AppDefaultLoading(),
    );
  }

  ClipRRect _buildBody() {
    return ClipRRect(
      borderRadius: widget.borderRadius,
      child: Container(
        color: Colors.black,
        width: widget.width,
        height: widget.height,
        child: FittedBox(
          fit: widget.fit ?? BoxFit.contain,
          child: SizedBox(
            width: _controller.value.size.width,
            height: _controller.value.size.height,
            child: VideoPlayer(_controller),
          ),
        ),
      ).clickable(_onTapVideo),
    );
  }

  Widget _buildPlayButton() {
    return ValueListenableBuilder<bool>(
      valueListenable: _isPlayingNotifier,
      builder: (_, isPlaying, __) {
        return AnimatedOpacity(
          opacity: isPlaying ? 0 : 1,
          duration: const Duration(milliseconds: 300),
          child: const AppIcon(
            icon: AppIcons.play,
            color: Colors.white,
            size: Sizes.s32,
          ),
        );
      },
    );
  }
}
