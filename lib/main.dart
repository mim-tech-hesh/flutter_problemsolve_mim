import 'package:flutter/material.dart';

void main() => runApp(CareerConnectApp());

class CareerConnectApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:SearchProfileScreen(),
    );
  }
}
Class SearchProfilescreen extends Statefulwidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfilePage()),
            );
          },
          child: AbsorbPointer( // Prevents keyboard from popping up
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Click to view profile',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
             ),
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  final String profileName = 'Md. Mezbaul Islam Zion';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: Center(
        child: Text(
          profileName,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  final String profileName = 'Md. Mezbaul Islam Zion';
  final String linkedInUrl = 'https://www.linkedin.com/in/your-linkedin-id'; // Replace with actual LinkedIn profile URL

  // Method to launch LinkedIn URL
  _launchLinkedIn() async {
    if (await canLaunch(linkedInUrl)) {
      await launch(linkedInUrl);
    } else {
      throw 'Could not launch $linkedInUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              profileName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _launchLinkedIn,
              child: Text('Visit LinkedIn Profile'),
            ),
          ],
        ),
      ),
    );
  }
}