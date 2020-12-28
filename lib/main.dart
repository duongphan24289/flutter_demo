import 'package:flutter/material.dart';
import 'package:hello_world/HomePage.dart';
// import 'package:hello_world/TodoList.dart';

void main() {
  // runApp(TodoList());
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

  void _decrementCounter(_) {
    setState(() {
      counter--;
      print('decrement : $counter');
    });
  }

  void _incrementCounter(_) {
    setState(() {
      counter++;
      print('increment : $counter');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.blue),
      home: HomePage(
        title: 'This is home page ...',
        counter: counter,
        decrementCounter: _decrementCounter,
        incrementCounter: _incrementCounter,
      ),
    );
  }
}
