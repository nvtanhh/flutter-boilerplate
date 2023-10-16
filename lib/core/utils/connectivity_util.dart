import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityUtil {
  const ConnectivityUtil._();

  static Future<bool> isConnected() async {
    final connectivityResult = await Connectivity().checkConnectivity();

    return connectivityResult != ConnectivityResult.none;
  }

  static Future<bool> isDisconnected() async {
    return !(await isConnected());
  }
}
