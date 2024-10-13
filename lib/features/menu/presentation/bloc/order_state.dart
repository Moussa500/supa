part of 'order_bloc.dart';

class OrderState {
  double price;
  int quantity;
  final List<MenuEntity> items;
  final List<Sauce> sauces;
  final List<Toppings> toppings;
  OrderState(
      {this.toppings = const [],
      this.items = const [],
      this.sauces = const [],
      this.price = 16.99,
      this.quantity = 1});
  OrderState copyWith(
      {List<MenuEntity>? updatedItems,
      double? price,
      int? quantity,
      List<Toppings>? toppings}) {
    return OrderState(
        items: updatedItems ?? items,
        sauces: sauces,
        price: price ?? this.price,
        quantity: quantity ?? this.quantity,
        toppings: toppings ?? this.toppings);
  }
}
final class OrderInitial extends OrderState {}
final class SauceAdded extends OrderState {
  List<Sauce>? sauce;
  SauceAdded({this.sauce});
}
