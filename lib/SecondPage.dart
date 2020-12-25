import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  SecondPage(
    this.decrementCounter, {
    Key key,
    this.title,
    this.counter,
  }) : super(key: key);

  final String title;
  final int counter;
  final ValueChanged<void> decrementCounter;

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  void _onPressed() {
    widget.decrementCounter(null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is second page.'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            Text(
              super.widget.counter.toString(),
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _onPressed,
        tooltip: 'Decrement',
        child: Icon(Icons.indeterminate_check_box),
        backgroundColor: Colors.red,
      ),
    );
  }
}
