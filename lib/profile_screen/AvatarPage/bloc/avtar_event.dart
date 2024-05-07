part of 'avtar_bloc.dart';

@freezed
class AvtarEvent with _$AvtarEvent {

  const factory AvtarEvent.avatarListingApi({
    BuildContext ?context,
    String ? image,
    String ? avatar,
    String ? name,
    String ? gender,
    String ? birthDay,
    String ? about,

}) = AvatarListingApi;

}
