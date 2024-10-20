import 'package:supa/features/menu/domain/entities/menu_entity.dart';

class CartState {}

class CartInitial extends CartState {}

class CartLoaded extends CartState {
  final Card items;
  CartLoaded({required this.items});
}
class QuantityUpdated extends CartState {
  int quantity;
  double totalPrice;
  QuantityUpdated({this.quantity=1,required this.totalPrice});
}
