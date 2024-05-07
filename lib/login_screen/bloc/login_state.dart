part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(false) bool passwordHide,
    @Default(false) bool isLogin,
    @Default(false) bool isForgotPasswordOtp,
    ForgotPasswordOtp? forgotPasswordOtp,
    LoginModel?loginModel,
    @Default(false) bool isOtpVerify,
    VerifyOtpModel? verifyOtpModel,
    @Default(false) bool isPasswordReset,
    PasswordReset?passwordReset,
    GetProfileModel? getProfileModel,
    @Default(false) bool isProfile,

  }) = _LoginState;
}
