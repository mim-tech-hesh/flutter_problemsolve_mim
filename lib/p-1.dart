import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: DateTimePick());
  }
}

class DateTimePick extends StatefulWidget {
  @override
  _DateTimePickState createState() => _DateTimePickState();
}

class _DateTimePickState extends State<DateTimePick> {
  DateTime? dt;

  void pickDate() async {
    final d = await showDatePicker(
      context: context,
      initialDate: dt ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (d == null) return;

    final t = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(dt ?? DateTime.now()),
    );
    if (t == null) return;

    setState(() {
      dt = DateTime(d.year, d.month, d.day, t.hour, t.minute);
    });
  }

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(title: Text('Pick Date & Time')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              dt == null
                  ? 'No selection'
                  : '${dt!.day}/${dt!.month}/${dt!.year}  ${dt!.hour.toString().padLeft(2, '0')}:${dt!.minute.toString().padLeft(2, '0')}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: pickDate, child: Text('Select')),
          ],
        ),
      ),
    );
  }
}
