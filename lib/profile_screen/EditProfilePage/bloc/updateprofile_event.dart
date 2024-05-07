part of 'updateprofile_bloc.dart';

@freezed
class UpdateprofileEvent with _$UpdateprofileEvent {
  const factory UpdateprofileEvent.updateProfileApi({
 required BuildContext context,
  required  Map<String,String> data,
})= UpdateProfileApi;

  const factory UpdateprofileEvent.uploadProfileImage(

  {
    required BuildContext context,
    required File profileImage


  }
      )= UploadProfileImage;


}
