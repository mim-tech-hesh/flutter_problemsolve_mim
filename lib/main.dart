import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: ProfilePg()));

class ProfilePg extends StatefulWidget {
  @override
  _ProfilePgState createState() => _ProfilePgState();
}

class _ProfilePgState extends State<ProfilePg> {
  File? img;
  final pkr = ImagePicker();

  Future<void> pickImg() async {
    try {
      final x = await pkr.pickImage(source: ImageSource.gallery);
      if (x != null) setState(() => img = File(x.path));
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Center(
        child: GestureDetector(
          onTap: pickImg,
          child: CircleAvatar(
            radius: 60,
            backgroundColor: Colors.grey[300],
            backgroundImage: img != null ? FileImage(img!) : null,
            child:
                img == null
                    ? Icon(Icons.person, size: 50, color: Colors.grey[700])
                    : null,
          ),
        ),
      ),
    );
  }
}
