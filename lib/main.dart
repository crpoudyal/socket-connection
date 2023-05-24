import 'package:flutter/material.dart';
import 'package:socket_connect/connect_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Socket Connection',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ConnectionScreen(),
    );
  }
}
