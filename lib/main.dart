import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: C()));

class C extends StatelessWidget {
  @override
  Widget build(BuildContext c) {
    return Scaffold(
      appBar: AppBar(title: Text('List Items')),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (ctx, i) => ListTile(title: Text('Item ${i + 1}')),
      ),
    );
  }
}
