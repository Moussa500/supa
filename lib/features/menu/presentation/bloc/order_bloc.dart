import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:supa/core/enums/menu_enums.dart';
import 'package:supa/features/menu/domain/entities/menu_entity.dart';
part 'order_event.dart';
part 'order_state.dart';

class OrderBloc extends Bloc<OrderEvent, OrderState> {
  OrderBloc() : super(OrderInitial()) {
    on<IncreaseButtonPressed>(_onIncreasePressed);
    on<DecreaseButtonPressed>(_onDecreasePressed);
    on<AddToCartButtonPressed>(_onItemAdded);
  }
  double totalPrice = 0;
  int quantity = 1;
  void _onIncreasePressed(IncreaseButtonPressed event, Emitter emit) {
    quantity = event.quantity++;
    totalPrice = event.price + totalPrice;
    totalPrice = double.parse(totalPrice.toStringAsFixed(2));
    print(totalPrice);
    emit(state.copyWith(price: totalPrice, quantity: quantity));
  }
  void _onDecreasePressed(DecreaseButtonPressed event, Emitter emit) {
    if (quantity > 1) {
      quantity=event.quantity--;
    }
     totalPrice = event.price + totalPrice;
    totalPrice = double.parse(totalPrice.toStringAsFixed(2));
    emit(state.copyWith(price: totalPrice, quantity: event.quantity));
  }
  void _onItemAdded(AddToCartButtonPressed event, Emitter emit) {
    final updatedItems = List<MenuEntity>.from(state.items)..add(event.item!);
    emit(state.copyWith(updatedItems: updatedItems));
  }
}
extension ListUpdate<T> on List<T> {
  List<T> update(int pos, T t) {
    List<T> list = [];
    list.add(t);
    replaceRange(pos, pos + 1, list);
    return this;
  }
}