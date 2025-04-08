import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0), // Updated background color
      appBar: AppBar(
        title: const Text('First Application'),
        centerTitle: true,
        backgroundColor: Color(0xFF6A1B9A), // Updated AppBar color
      ),
      body: const Center(
        child: Text(
          'Hello World!',
          style: TextStyle(
            fontSize: 40,
            fontFamily: 'DMSans',
            color: Color(0xFF1A237E), // Updated text color
          ),
        ),
      ),
    );
  }
}
