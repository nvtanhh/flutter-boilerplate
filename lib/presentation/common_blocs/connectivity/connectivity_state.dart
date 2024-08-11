part of 'connectivity_cubit.dart';

@freezed
class ConnectivityState with _$ConnectivityState {
  const factory ConnectivityState({
    @Default(ConnectionType.wifi) ConnectionType connectionType,
  }) = _ConnectivityState;
}

enum ConnectionType {
  wifi,
  mobile,
  none,
}
