import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var data = List.generate(10, (i) => 'Item ${i + 1}');

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(title: Text('List')),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder:
            (c, i) => Dismissible(
              key: ValueKey(data[i]),
              background: actBox(
                Icons.delete,
                Colors.red,
                Alignment.centerLeft,
              ),
              secondaryBackground: actBox(
                Icons.edit,
                Colors.blue,
                Alignment.centerRight,
              ),
              onDismissed: (dir) {
                if (dir == DismissDirection.endToStart) {
                  showDialog(
                    context: ctx,
                    builder: (_) {
                      var ctrl = TextEditingController(text: data[i]);
                      return AlertDialog(
                        title: Text('Edit'),
                        content: TextField(controller: ctrl),
                        actions: [
                          TextButton(
                            onPressed: () {
                              setState(() => data[i] = ctrl.text);
                              Navigator.pop(ctx);
                            },
                            child: Text('Save'),
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  setState(() => data.removeAt(i));
                  ScaffoldMessenger.of(
                    ctx,
                  ).showSnackBar(SnackBar(content: Text('Deleted')));
                }
              },
              child: ListTile(title: Text(data[i])),
            ),
      ),
    );
  }

  Widget actBox(IconData ic, Color clr, Alignment pos) {
    return Container(
      color: clr,
      alignment: pos,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Icon(ic, color: Colors.white),
    );
  }
}
