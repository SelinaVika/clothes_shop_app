import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'page_dots_controller.g.dart';

@riverpod
class PageDotsController extends _$PageDotsController {
  @override
  int build() {
    return 0;
  }

  void set(int value) {
    state = value;
  }
}
