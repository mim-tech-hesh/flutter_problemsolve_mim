import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LocalImg());
  }
}

// ---------------- Local Asset Image Screen ----------------

class LocalImg extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(title: Text('Local Image')),
      body: Center(child: Image.asset('assets/my_img.png', width: 200)),
    );
  }
}
