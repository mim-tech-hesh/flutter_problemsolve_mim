import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: BtmNav());
  }
}

class BtmNav extends StatefulWidget {
  @override
  _BtmNavState createState() => _BtmNavState();
}

class _BtmNavState extends State<BtmNav> {
  int cur = 0;
  final pages = [Home(), Srch(), Prof()];

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      body: pages[cur],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: cur,
        onTap: (i) => setState(() => cur = i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Center(child: Text('Home Screen', style: TextStyle(fontSize: 24))),
    );
  }
}

class Srch extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(title: Text('Search')),
      body: Center(
        child: Text('Search Screen', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

class Prof extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Center(
        child: Text('Profile Screen', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
