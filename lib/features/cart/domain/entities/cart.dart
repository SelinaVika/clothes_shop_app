import 'package:freezed_annotation/freezed_annotation.dart';
import 'cart_item.dart';

part 'cart.freezed.dart';

@freezed
abstract class Cart with _$Cart {
  const factory Cart({
    required List<CartItem> items,
    @Default(0) double deliveryPrice,
    @Default(0) double discount,
    String? promoCode,
  }) = _Cart;

  const Cart._();

  double get itemsTotal => items.fold(0, (sum, item) => sum + item.total);

  double get total => itemsTotal + deliveryPrice - discount;

  int get itemsCount => items.fold(0, (sum, item) => sum + item.quantity);

  bool get isEmpty => items.isEmpty;
}
