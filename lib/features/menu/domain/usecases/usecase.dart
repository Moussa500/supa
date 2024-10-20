import 'package:supa/core/usecase/usecase.dart';
import 'package:supa/features/menu/domain/entities/menu_entity.dart';
import 'package:supa/features/menu/domain/repositories/repository.dart';
import 'package:supa/service_locator.dart';

class AddToCardUseCase implements Usecase<void, CardItem> {
  @override
  void call(CardItem params) {
    sl<CartRepository>().addToCARD(params);
  }
}

class GetCardItemsUseCase implements Usecase<Card, NoParams> {
  @override
  Card call(NoParams params) {
    return sl<CartRepository>().getCardItem();
  }
}

class GetProductUseCase implements Usecase<List<MenuEntity>, NoParams> {
  @override
  List<MenuEntity> call(NoParams params) {
    return sl<ProductRepository>().getProducts();
  }
}
