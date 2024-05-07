part of 'message_screen_bloc.dart';

@freezed
class MessageScreenState with _$MessageScreenState {
  const factory MessageScreenState({
    GetAllHostModel? getAllHostModel,
    MessageGroup? messageGroup,
  }) = _MessageScreenState;
}
