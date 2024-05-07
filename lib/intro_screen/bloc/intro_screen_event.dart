part of '../../intro_screen/bloc/intro_screen_bloc.dart';

@freezed
class IntroScreenEvent with _$IntroScreenEvent {
  const factory IntroScreenEvent.onIndexChange({
    required int index,
  }) = OnIndexChange;
}
