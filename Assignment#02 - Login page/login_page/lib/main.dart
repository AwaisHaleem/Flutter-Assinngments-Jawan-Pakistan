import 'package:flutter/material.dart';
import 'package:login_page/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    debugDisableShadows = true;
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
