import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'intro_screen_bloc.freezed.dart';
part 'intro_screen_event.dart';
part 'intro_screen_state.dart';

class IntroScreenBloc extends Bloc<IntroScreenEvent, IntroScreenState> {
  IntroScreenBloc() : super(const IntroScreenState()) {
    on<OnIndexChange>(onIndexChange);
  }

  FutureOr<void> onIndexChange(event, Emitter<IntroScreenState> emit) {
    emit(state.copyWith(pageViewIndex: event.index));
  }
}
