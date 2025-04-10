import 'package:flutter/material.dart';

void main() => runApp(A());

class A extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            'Hello World!',
            style: TextStyle(
              fontSize: 24,
              fontFamily: 'Arial',
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
