import 'package:supa/features/menu/domain/entities/menu_entity.dart';

class MenuState  {
  
}
class MenuInitial extends MenuState {
  
}

class MenuLoaded extends MenuState {
  final List<MenuEntity> producs;
  MenuLoaded({required this.producs});
}
