import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: B()));

class B extends StatefulWidget {
  @override
  _BState createState() => _BState();
}

class _BState extends State<B> {
  var txt = 'Press the button';

  @override
  Widget build(BuildContext c) {
    return Scaffold(
      appBar: AppBar(title: Text('Task 2')),
      body: Center(child: Text(txt, style: TextStyle(fontSize: 22))),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => txt = 'Button Pressed'),
        child: Icon(Icons.touch_app),
      ),
    );
  }
}
