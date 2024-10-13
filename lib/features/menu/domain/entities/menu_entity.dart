import 'package:equatable/equatable.dart';
import 'package:supa/core/base/model/base_model.dart';
import 'package:supa/core/enums/menu_enums.dart';

class MenuEntity extends Equatable {
  final String? name;
  final String? type;
  final double? price;
  final double? rating;
  final int? quantity;
  final int? ratersNumber;
  final List<Sauce>? sauce;
  final String? image;
  final List<Toppings>? toppings;
  const MenuEntity(
      {this.name,
      this.quantity,
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
        quantity
      ];
}
