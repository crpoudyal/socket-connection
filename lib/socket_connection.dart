import 'dart:developer';

import 'package:socket_connect/const.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketClient {
  static IO.Socket? socket;

  static void checkConnection() {
    socket = IO.io(Const.url, <String, dynamic>{
      'autoConnect': false,
      'transports': ['websocket'],
    });
    socket!.connect();
    socket!.onConnect((_) {
      log("Socket Connected: " + socket!.connected.toString());
      log('Connection established');
    });
  }
}
