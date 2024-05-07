part of '../../intro_screen/bloc/intro_screen_bloc.dart';

@freezed
class IntroScreenState with _$IntroScreenState {
  const factory IntroScreenState({
    @Default(0) int pageViewIndex,
  }) = _IntroScreenState;
}
