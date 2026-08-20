import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../gen/assets.gen.dart';

part 'images_provider.g.dart';

@riverpod
List<AssetGenImage> images(Ref ref) {
  return Assets.images.values;
}
