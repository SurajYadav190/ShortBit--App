import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bottom_navigation_bloc.freezed.dart';
part 'bottom_navigation_event.dart';
part 'bottom_navigation_state.dart';

class BottomNavigationBloc
    extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  BottomNavigationBloc() : super(const BottomNavigationState()) {
    on<NavBarTapped>(navBarTapped);
  }

  FutureOr<void> navBarTapped(
      NavBarTapped event, Emitter<BottomNavigationState> emit) {
    log('----- ${event.tappedIndex}');
    emit(state.copyWith(currentBottomIndex: event.tappedIndex));
  }
}
