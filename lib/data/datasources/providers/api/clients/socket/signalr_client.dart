// ignore_for_file: depend_on_referenced_packages

import 'dart:async';
// import 'dart:io' as io;

// import 'package:http/http.dart' as http;
// import 'package:http/io_client.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:signalr_core/signalr_core.dart';

import '../../../../../../core/configs/di/di.dart';
import '../../../../../../core/mixins/log_mixin.dart';
import '../../../../app_preferences.dart';

@lazySingleton
class SignalRClient with LogMixin {
  SignalRClient();

  HubConnection? _hubConnection;
  bool _isConnected = false;
  Completer<void>? _completer;

  bool get isConnected => _isConnected;

  Future<void> connect() async {
    if (_isConnected) {
      return;
    }

    if (_completer != null) {
      await _completer!.future;

      return;
    }

    try {
      _completer = Completer();

      final token = await getIt<AppPreferences>().getAccessToken();
      // ignore: prefer_const_declarations
      final url = 'EnvConfig.signalRUrl';

      logInfo('Start connect to $url');

      final options = HttpConnectionOptions(
        // logging: (level, message) => logDebug(message),
        transport: HttpTransportType.webSockets,
        // client: _HttpClient(defaultHeaders: {}),
        skipNegotiation: true,
      );

      _hubConnection = HubConnectionBuilder()
          .withUrl(
            '$url?token=$token',
            options,
          )
          .withAutomaticReconnect()
          .build();

      _hubConnection!.onclose((exception) {
        logError('Connection closed: $exception');
        _clearState();
      });
      _hubConnection!.onreconnecting(
        (exception) => logInfo('Connecting to $url: $exception'),
      );
      _hubConnection!.onreconnected((connectionId) {
        logInfo('Connection reconnected: $connectionId');
        _isConnected = true;
      });

      if (_hubConnection?.state != HubConnectionState.connected) {
        await _hubConnection!.start();
        logInfo('Connected to $url');
        _isConnected = true;
        _completer?.complete();
      }
    } catch (e) {
      logError(e);
    }
  }

  Future<void> disconnect() async {
    _completer = null;
    if (!_isConnected) {
      return;
    }

    await _hubConnection!.stop();
    _isConnected = false;
  }

  Future<HubConnection> getConnection() async {
    await connect();

    return _hubConnection!;
  }

  void _clearState() {
    _hubConnection = null;
    _isConnected = false;
    _completer = null;
  }
}
