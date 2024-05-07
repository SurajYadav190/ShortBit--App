part of 'create_account_bloc.dart';

@freezed
class CreateAccountState with _$CreateAccountState {
  const factory CreateAccountState({
    @Default(false) bool passwordHide,
    @Default(false) bool isSingnUpApiHit,
    SignUpModel? signUpModel,
    @Default(false) bool isOtpVerify,
    VerifyOtpModel? verifyOtpModel,
    @Default(false) bool isProfileStatus,
    GetProfileModel? getProfileModel,
    @Default(false) bool isTermsAndCondition,
    TermsAndConditionModel?termsAndConditionModel,
   }) = _CreateAccountState;
}
