import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset(
            'assets/logo.png',
            fit: BoxFit.contain,
          ), // Add your logo here
        ),
        title: Text('Custom AppBar'),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: Center(child: Text('Body content here')),
    );
  }
}
