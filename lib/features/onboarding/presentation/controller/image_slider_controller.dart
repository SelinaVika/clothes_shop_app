import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'image_slider_controller.g.dart';

@riverpod
class ImageSliderController extends _$ImageSliderController {
  late final ScrollController _controller;

  @override
  bool build(ScrollController scrollController) {
    _controller = scrollController;
    ref.onDispose(() {
      scrollController.dispose();
    });

    scrollController.addListener(_onScroll);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _autoScroll();
    });

    return false;
  }

  void _onScroll() {
    if (_controller.hasClients && _controller.position.atEdge) {
      state = !state;
      _autoScroll();
    }
  }

  void _autoScroll() {
    if (!_controller.hasClients) return;

    final target = state ? 0.0 : _controller.position.maxScrollExtent;

    _controller.animateTo(
      target,
      duration: const Duration(seconds: 20),
      curve: Curves.linear,
    );
  }
}
