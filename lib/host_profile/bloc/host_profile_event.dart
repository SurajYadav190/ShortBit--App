part of 'host_profile_bloc.dart';

@freezed
class HostProfileEvent with _$HostProfileEvent {
  const factory HostProfileEvent.started() = _Started;

  const factory HostProfileEvent.getProfileApi({
    required BuildContext context,
    required String hostId,
  }) = GetProfileApi;
}
