import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supa/core/usecase/usecase.dart';
import 'package:supa/features/menu/domain/usecases/usecase.dart';
import 'package:supa/features/menu/presentation/bloc/menu/menu_state.dart';
import 'package:supa/service_locator.dart';

class MenuBloc extends Cubit<MenuState> {
  MenuBloc() : super(MenuInitial());
  void loadProducts() {
    final products = sl<GetProductUseCase>().call(NoParams());
    emit(MenuLoaded(producs: products));
  }
}
