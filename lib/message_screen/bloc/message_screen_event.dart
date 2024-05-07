part of 'message_screen_bloc.dart';

@freezed
class MessageScreenEvent with _$MessageScreenEvent {
  const factory MessageScreenEvent.getAllHostApi() = GetAllHostApi;

  const factory MessageScreenEvent.getAllMessageGroupApi() =
      GetAllMessageGroupApi;
}
