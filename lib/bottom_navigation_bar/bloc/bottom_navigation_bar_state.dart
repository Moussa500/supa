part of 'bottom_navigation_bar_bloc.dart';

class BottomNavigationBarState extends Equatable {
  int selectedIndex;
  BottomNavigationBarState({this.selectedIndex = 0});
  BottomNavigationBarState copyWith({int? index}) {
    return BottomNavigationBarState(
      selectedIndex: index ?? selectedIndex,
    );
  }

  @override
  List<Object> get props => [selectedIndex];
}

final class BottomNavigationBarInitial extends BottomNavigationBarState {}
