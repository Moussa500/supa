part of 'order_bloc.dart';

class OrderEvent extends Equatable {
  const OrderEvent();

  @override
  List<Object> get props => [];
}

class DecreaseButtonPressed extends OrderEvent {
  int quantity;
  double price;
  DecreaseButtonPressed({this.quantity = 1, required this.price});
}

class IncreaseButtonPressed extends OrderEvent {
  int quantity = 1;
  double price;
  IncreaseButtonPressed({required this.quantity, required this.price});
}

class AddToCartButtonPressed extends OrderEvent {
  MenuEntity? item;
  AddToCartButtonPressed({this.item});
}

class SauceCheckBoxPressed extends OrderEvent {
  Sauce? sauce;
  SauceCheckBoxPressed({this.sauce});
}
class SelectMenu extends OrderEvent {
  int index;
  SelectMenu({required this.index});
}
class ItemUpdated {
  int index;
  ItemUpdated({required this.index});
}
