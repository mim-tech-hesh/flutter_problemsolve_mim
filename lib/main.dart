import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) =>
      MaterialApp(home: GridImg(), debugShowCheckedModeBanner: false);
}

class GridImg extends StatelessWidget {
  final imgs = List.generate(
    10,
    (i) => 'https://via.placeholder.com/150?text=Img+\${i+1}',
  );

  @override
  Widget build(BuildContext ctx) => Scaffold(
    appBar: AppBar(title: Text('Grid')),
    body: Padding(
      padding: EdgeInsets.all(8),
      child: GridView.builder(
        itemCount: imgs.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1,
        ),
        itemBuilder:
            (ctx, i) => ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(imgs[i], fit: BoxFit.cover),
            ),
      ),
    ),
  );
}
