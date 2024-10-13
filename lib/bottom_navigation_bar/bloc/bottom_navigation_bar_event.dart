part of 'bottom_navigation_bar_bloc.dart';

sealed class BottomNavigationBarEvent extends Equatable {
  const BottomNavigationBarEvent();

  @override
  List<Object> get props => [];
}

class AppStarted extends BottomNavigationBarEvent {
  @override
  String toString() => 'AppStarted';
}

class PageTapped extends BottomNavigationBarEvent {
  final int index;
  const PageTapped({required this.index});
  @override
  String toString() => 'PageTapped:$index';
}
