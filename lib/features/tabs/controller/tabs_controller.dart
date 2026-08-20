import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'tabs_controller.g.dart';

@riverpod
class TabsController extends _$TabsController {
  @override
  int build() {
    return 0;
  }

  void set(int index) {
    state = index;
  }
}
