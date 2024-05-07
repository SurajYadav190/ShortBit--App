part of 'user_update_details_bloc.dart';

@freezed
class UserUpdateDetailsEvent with _$UserUpdateDetailsEvent {
  const factory UserUpdateDetailsEvent.nameApi() = NameApi;

  const factory UserUpdateDetailsEvent.changeGender({
    required bool male,
    required bool female,
  }) = ChangeGender;

  const factory UserUpdateDetailsEvent.updateProfileApi({
    required String gender,
    required String dob,
    required String interest,
    required String location,
    required String isHitFor,
    required BuildContext context,
  }) = UpdateProfileApi;

  const factory UserUpdateDetailsEvent.interestListApi() = InterestListApi;

  const factory UserUpdateDetailsEvent.uploadImageApi({
    required File image,
    required BuildContext context,
  }) = UploadImageApi;
}
