import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: L()));

class L extends StatefulWidget {
  @override
  _LState createState() => _LState();
}

class _LState extends State<L> {
  final _key = GlobalKey<FormState>();
  String u = '', p = '';

  @override
  Widget build(BuildContext c) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _key,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Username'),
                onSaved: (v) => u = v ?? '',
                validator: (v) => v!.isEmpty ? 'Enter username' : null,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                onSaved: (v) => p = v ?? '',
                validator: (v) => v!.isEmpty ? 'Enter password' : null,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Login'),
                onPressed: () {
                  if (_key.currentState!.validate()) {
                    _key.currentState!.save();
                    // Login logic here
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
