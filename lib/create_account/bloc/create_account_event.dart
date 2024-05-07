part of 'create_account_bloc.dart';

@freezed
class CreateAccountEvent with _$CreateAccountEvent {
  const factory CreateAccountEvent.passwordHide({
    required bool isPasswordHide,
  }) = PasswordHide;

  const factory CreateAccountEvent.createAccountApi({
    required String name,
    required String email,
    required String password,
    required String phone_number,
    required BuildContext context,
  }) = CreateAccountApi;

  const factory CreateAccountEvent.verifyCreateAccountOtpApi({
    required String phone_number,
    required String otp,
    required BuildContext context,
  }) = VerifyCreateAccountOtpApi;

  const factory CreateAccountEvent.getProfileApi({
    required BuildContext context,
  }) = GetProfileApi;

  const factory CreateAccountEvent.getProfileEditApi({
    required BuildContext context,
  }) = GetProfileEditApi;

  const factory CreateAccountEvent.getTermsAndCondition({
    required BuildContext context,
  }) = GetTermsAndCondition;

  const factory CreateAccountEvent.getUser() = GetUser;
}
