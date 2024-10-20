import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supa/core/usecase/usecase.dart';
import 'package:supa/features/menu/domain/entities/menu_entity.dart';
import 'package:supa/features/menu/domain/usecases/usecase.dart';
import 'package:supa/features/menu/presentation/bloc/order/cart_state.dart';
import 'package:supa/service_locator.dart';

class CartBloc extends Cubit<CartState> {
  CartBloc() : super(CartInitial());
  void addToCart(CardItem product) {
    sl<AddToCardUseCase>().call(product);
    loadCart();
  }
  void loadCart() {
    final items = sl<GetCardItemsUseCase>().call(NoParams());
    emit(CartLoaded(items: items));
  }
}
