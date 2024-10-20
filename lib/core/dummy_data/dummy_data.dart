import 'package:supa/config/assets/app_images.dart';
import 'package:supa/features/menu/domain/entities/menu_entity.dart';

class DummyData {
  static const MenuEntity firstMenu = MenuEntity(
      name: "Chicken Teryaki Bowl",
      price: 14.99,
      ratersNumber: 121,
      rating: 4.9,
      type: "Japanese Beef",
      image: AppImages.firstMenu);
  static const MenuEntity secondMenu = MenuEntity(
      name: "Chicken Teryaki Bowl",
      price: 14.99,
      ratersNumber: 121,
      rating: 4.9,
      type: "Japanese Beef",
      image: AppImages.secondMenu);
  static const MenuEntity ramen = MenuEntity(
      name: "Ramen Phapsody ",
      price: 10.99,
      ratersNumber: 121,
      rating: 4.9,
      type: "Japanese Beef",
      image: AppImages.ramen);
  static const MenuEntity suchi = MenuEntity(
      name: "Sushi Symphony Bowl",
      price: 14.99,
      ratersNumber: 121,
      rating: 4.9,
      type: "Japanese Beef",
      image: AppImages.sushi);
  static const MenuEntity umami = MenuEntity(
      name: "Umami Utopia Bowl",
      price: 12.99,
      ratersNumber: 121,
      rating: 4.9,
      type: "Japanese Beef",
      image: AppImages.umami);
  static const List<MenuEntity> menuList = [firstMenu, secondMenu];
  static const List<MenuEntity> featuredmenuList = [
    firstMenu,
    ramen,
    suchi,
    umami
  ];
  static const List<String> mostLoved = [
    AppImages.mostLoved1,
    AppImages.mostLoved2,
    AppImages.firstMenu
  ];
}
