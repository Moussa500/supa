import 'package:supa/core/base/model/base_model.dart';
import 'package:supa/core/enums/menu_enums.dart';
import 'package:supa/features/menu/domain/entities/menu_entity.dart';

class MenuModel extends BaseModel<MenuModel> {
  final String? name;
  final String? type;
  final double? price;
  final double? rating;
  final int? ratersNumber;
  final List<Sauce>? sauce;
  final List<Toppings>? toppings;
  MenuModel(
      {this.name,
      this.type,
      this.price,
      this.rating,
      this.ratersNumber,
      this.sauce,
      this.toppings});
  @override
  MenuModel fromJson(Map<String, dynamic> json) {
    return MenuModel(
      name: json["name"],
      price: json["price"],
      type: json["type"],
      rating: json["rating"],
      ratersNumber: json["ratersNumber"],
      sauce: json["sauce"],
      toppings: json["toppings"],
    );
  }
  @override
  List<Object?> get props =>
      [name, price, rating, ratersNumber, sauce, toppings];

  @override
  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "price": price,
      "type": type,
      "rating": rating,
      "ratersNumber": ratersNumber,
      "sauce": sauce,
      "toppings": toppings,
    };
  }
}
extension on MenuModel {
  MenuEntity toEntity() {
    return MenuEntity(
      name: name,
      price: price,
      type: type,
      rating: rating,
      ratersNumber: ratersNumber,
      sauce: sauce,
      toppings: toppings,
    );
  }
}
