import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: AnimBox()));

class AnimBox extends StatefulWidget {
  @override
  _AnimBoxState createState() => _AnimBoxState();
}

class _AnimBoxState extends State<AnimBox> {
  double w = 100, h = 100;
  Color c = Colors.blue;
  BorderRadius br = BorderRadius.circular(8);

  void change() {
    setState(() {
      w = w == 100 ? 200 : 100;
      h = h == 100 ? 150 : 100;
      c = c == Colors.blue ? Colors.red : Colors.blue;
      br =
          br == BorderRadius.circular(8)
              ? BorderRadius.circular(50)
              : BorderRadius.circular(8);
    });
  }

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(title: Text("Q16")),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 400),
          width: w,
          height: h,
          decoration: BoxDecoration(color: c, borderRadius: br),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: change,
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
