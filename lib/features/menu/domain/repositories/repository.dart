import 'package:dartz/dartz.dart';
import 'package:supa/features/menu/domain/entities/menu_entity.dart';

abstract class CartRepository{
  void addToCARD(CardItem product);
  Card getCardItem();
}
abstract class ProductRepository{
  List<MenuEntity> getProducts();
}