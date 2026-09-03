import 'package:clothes_shop_app/features/cart/domain/entities/cart_item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../gen/assets.gen.dart';

part 'cart_provider.g.dart';

@riverpod
List<CartItem> cart(Ref ref) {
  return [
    CartItem(
      id: '1',
      productId: '2',
      name: 'Андрей',
      imageUrl: Assets.images.img0.path,
      price: 11,
      quantity: 1,
      maxQuantity: 32,
    ),
    CartItem(
      id: '1',
      productId: '2',
      name: 'Андрей',
      imageUrl: Assets.images.img0.path,
      price: 11,
      quantity: 1,
      maxQuantity: 32,
    ),
    CartItem(
      id: '1',
      productId: '2',
      name: 'Андрей',
      imageUrl: Assets.images.img0.path,
      price: 11,
      quantity: 1,
      maxQuantity: 32,
    ),
    CartItem(
      id: '1',
      productId: '2',
      name: 'Андрей',
      imageUrl: Assets.images.img0.path,
      price: 11,
      quantity: 1,
      maxQuantity: 32,
    ),
  ];
}
