part of 'bloc_wallet_bloc.dart';

@freezed
class WalletEvent with _$WalletEvent {
  const factory WalletEvent.walletApi() = WalletApi;

}
