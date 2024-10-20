import 'package:dartz/dartz.dart';
import 'package:supa/core/dummy_data/dummy_data.dart';
import 'package:supa/features/menu/domain/entities/menu_entity.dart';

abstract class CardService {
  void addToCARD(CardItem product);
  Card getCardItem();
}

abstract class ProductService {
  List<MenuEntity> getProducts();
}

class ProductServiceImpl implements ProductService {
  @override
  List<MenuEntity> getProducts() {
    return DummyData.featuredmenuList;
  }
}

class CardServiceImpl implements CardService {
  List<CardItem> _cardItems = [];
  @override
  void addToCARD(CardItem product) {
    _cardItems.add(product);
  }
  @override
  Card getCardItem() {
    return Card(items: _cardItems);
  }
}
