import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime initialDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DatePicker'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${initialDay.year} - ${initialDay.month} - ${initialDay.day}',
              style: TextStyle(fontSize: 40),
            ),
            ElevatedButton(
                onPressed: () async {
                  final DateTime? dateTime = await showDatePicker(
                      context: context,
                      initialDate: initialDay,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(3000));
                  if (dateTime != null) {
                    setState(() {
                      initialDay = dateTime;
                    });
                  }
                },
                child: Text('DatePicker'))
          ],
        ),
      ),
    );
  }
}
