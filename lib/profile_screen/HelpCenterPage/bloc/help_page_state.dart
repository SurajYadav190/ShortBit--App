part of 'help_page_bloc.dart';

@freezed
abstract class HelpPageState with _$HelpPageState {
  const factory HelpPageState({

    @Default(false) bool faqLoading ,

    FaqModel ? faqModel
}) = _HelpPageState;

}
