part of 'user_update_details_bloc.dart';

@freezed
class UserUpdateDetailsState with _$UserUpdateDetailsState {
  const factory UserUpdateDetailsState(
      {@Default("hg") String ojh,
      @Default(true) bool btnMale,
      @Default(false) bool btnFemale,
      @Default(false) bool isProfileUpdated,
      UpdateProfileModel? updateProfileModel,
      @Default(false) bool isGenderUpdated,
      @Default(false) bool isInterestUpdated,
      @Default(false) bool isLocationUpdated,
      @Default(false) bool isImageUpdated,
      @Default(false) bool isGetInterestList,
      InterestListModel? interestListModel}) = _UserUpdateDetailsState;
}
