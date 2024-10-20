import 'package:equatable/equatable.dart';
import 'package:supa/core/base/model/base_model.dart';
import 'package:supa/core/enums/menu_enums.dart';
import 'package:supa/features/menu/presentation/widgets/card_items.dart';

class MenuEntity extends Equatable {
  final String? name;
  final String? type;
  final double? price;
  final double? rating;
  final int? ratersNumber;
  final List<Sauce>? sauce;
  final String? image;
  final List<Toppings>? toppings;
  const MenuEntity(
      {this.name,
      this.image,
      this.type,
      this.price,
      this.rating,
      this.ratersNumber,
      this.sauce,
      this.toppings});
  @override
  List<Object?> get props => [
        name,
        price,
        type,
        rating,
        ratersNumber,
        sauce,
        toppings,
        image,
      ];
}

class CardItem {
  final MenuEntity product;
  int quantity = 1;
  CardItem({required this.product, required this.quantity});
  double get totalPrice => product.price! * quantity;
}

class Card {
  final List<CardItem> items;
  final double promotion = -5.97;
  final double deliveryFee = 5.89;
  final double taxes = 4.34;
  Card({this.items = const []});
  double get subTotal => items.fold(0, (sum, item) => sum + item.totalPrice);
  double get total => items.fold(
      0, (sum, item) => sum + subTotal + promotion + deliveryFee + taxes);
}
