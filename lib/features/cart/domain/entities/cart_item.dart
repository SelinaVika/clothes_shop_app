import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart_item.freezed.dart';

@freezed
abstract class CartItem with _$CartItem {
  const factory CartItem({
    required String id,
    required String productId,
    required String name,
    required String imageUrl,
    required double price,
    double? oldPrice,
    required int quantity,
    String? color,
    String? size,
    required int maxQuantity,
  }) = _CartItem;

  const CartItem._();

  double get total => price * quantity;
}
