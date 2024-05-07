part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.passwordHide({
    required bool isPasswordHide,
  }) = PasswordHide;

  const factory LoginEvent.loginApi({
    required String email,
    required String password,
    required  bool isMail,
    required BuildContext context,
  }) = LoginApi;

  const factory LoginEvent.forgot_password_request({
    required String phone_number,
    required  bool isMail,
    required BuildContext context,
  }) = ForgotPasswordRequest;

  const factory LoginEvent.verifyOtpApi({
    required String phone_number,
    required String otp,
    required  bool isMail,
    required BuildContext context,
  }) = VerifyAccountOtpApi;

  const factory LoginEvent.password_reset({
    required String phone_number,
    required String password,
    required  bool isMail,
    required BuildContext context,
  }) = Password_reset;

  const factory LoginEvent.getProfileApi({
    required BuildContext context,
  }) = GetProfileApi;


}
