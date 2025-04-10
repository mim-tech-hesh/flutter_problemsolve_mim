import 'package:flutter/material.dart';

void main() => runApp(E());

class E extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    return MaterialApp(home: F());
  }
}

class F extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    return Scaffold(
      appBar: AppBar(title: Text('First')), // optional, just for better UX
      body: Center(
        child: ElevatedButton(
          child: Text('Go Next'),
          onPressed:
              () => Navigator.push(c, MaterialPageRoute(builder: (_) => G())),
        ),
      ),
    );
  }
}

class G extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    return Scaffold(
      appBar: AppBar(title: Text('Second')),
      body: Center(child: Text('Second Screen')),
    );
  }
}
