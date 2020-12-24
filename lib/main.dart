import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter;

  @override
  void initState() {
    counter = counter ?? 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
