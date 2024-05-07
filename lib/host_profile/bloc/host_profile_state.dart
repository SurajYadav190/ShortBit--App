part of 'host_profile_bloc.dart';

@freezed
class HostProfileState with _$HostProfileState {
  const factory HostProfileState({
    HostProfileModel? hostProfileModel,
    @Default(false) bool isProfile,
}) = _hostProfileState;
}
