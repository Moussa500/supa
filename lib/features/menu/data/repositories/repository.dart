import 'package:dartz/dartz.dart';
import 'package:supa/features/menu/data/datasources/service.dart';
import 'package:supa/features/menu/domain/entities/menu_entity.dart';
import 'package:supa/features/menu/domain/repositories/repository.dart';
import 'package:supa/service_locator.dart';

class CartRepositoryImpl implements CartRepository {
  @override
  void addToCARD(CardItem product) {
    sl<CardService>().addToCARD(product);
  }

  @override
  Card getCardItem() {
    return sl<CardService>().getCardItem();
  }
}
class ProductRepositoryImpl implements ProductRepository {
  @override
  List<MenuEntity> getProducts() {
    return sl<ProductService>().getProducts();
  }
  
}
