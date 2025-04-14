import 'package:flutter/material.dart';

void main() => runApp(MySet());

class MySet extends StatefulWidget {
  @override
  _MySetState createState() => _MySetState();
}

class _MySetState extends State<MySet> {
  bool dark = false;

  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(
      theme: dark ? ThemeData.dark() : ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(title: Text("Q17")),
        body: ListTile(
          title: Text("Dark Mode"),
          trailing: Switch(
            value: dark,
            onChanged: (v) => setState(() => dark = v),
          ),
        ),
      ),
    );
  }
}
