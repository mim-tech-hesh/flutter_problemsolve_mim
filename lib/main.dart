import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: D()));

class D extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    return Scaffold(
      appBar: AppBar(title: Text('Text Styles')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Big Bold',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              'Small Grey',
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            Text(
              'Colored & Medium',
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
