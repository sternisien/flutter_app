import 'package:flutter/material.dart';
import 'package:flutter_app/home.dart';
import 'package:flutter_app/units.dart';

void main() {
  runApp(MyAppFlutter());
}

class MyAppFlutter extends StatefulWidget {
  @override
  _MyAppFlutterState createState() => _MyAppFlutterState();
}

class _MyAppFlutterState extends State<MyAppFlutter> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {Units.tag: (context) => Units()},
    );
  }
}
