import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'bottom_navigation_bar_event.dart';
part 'bottom_navigation_bar_state.dart';

class BottomNavigationBarBloc
    extends Bloc<BottomNavigationBarEvent, BottomNavigationBarState> {
  BottomNavigationBarBloc() : super(BottomNavigationBarInitial()) {
    on<PageTapped>((PageTapped event, Emitter<BottomNavigationBarState> emit) {
      emit(state.copyWith(index: event.index));
    });
  }
}
