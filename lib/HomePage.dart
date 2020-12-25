import 'package:flutter/material.dart';
import 'package:hello_world/SecondPage.dart';

class HomePage extends StatefulWidget {
  final String title;
  final int counter;
  final ValueChanged<void> decrementCounter;
  final ValueChanged<void> incrementCounter;
  HomePage(
      {Key key,
      this.title,
      this.counter,
      this.decrementCounter,
      this.incrementCounter})
      : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _onPressed() {
    widget.incrementCounter(null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('You have pushed the button this many times:'),
            Text(
              widget.counter.toString(),
              style: Theme.of(context).textTheme.display1,
            ),
            RaisedButton(
              child: Text('Next screen'),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondPage(
                              widget.decrementCounter,
                              title: 'Second Page',
                              counter: widget.counter,
                            )));
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _onPressed,
        tooltip: 'Increment',
      ),
    );
  }
}
