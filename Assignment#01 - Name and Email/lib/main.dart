import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text("Name: Awais Haleem \nemail: awaishaleem20@gmail.com"),
      ),
    );
  }
}
