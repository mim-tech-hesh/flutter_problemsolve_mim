import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(title: Text("Drawer App")),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.purple),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
            ListTile(
              title: Text("Page A"),
              onTap:
                  () => Navigator.push(
                    ctx,
                    MaterialPageRoute(builder: (_) => PageA()),
                  ),
            ),
            ListTile(
              title: Text("Page B"),
              onTap:
                  () => Navigator.push(
                    ctx,
                    MaterialPageRoute(builder: (_) => PageB()),
                  ),
            ),
          ],
        ),
      ),
      body: Center(child: Text("Main Screen")),
    );
  }
}

class PageA extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) => Scaffold(
    appBar: AppBar(title: Text("Page A")),
    body: Center(child: Text("You're on Page A")),
  );
}

class PageB extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) => Scaffold(
    appBar: AppBar(title: Text("Page B")),
    body: Center(child: Text("You're on Page B")),
  );
}
