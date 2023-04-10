import 'package:flutter/material.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({super.key});

  @override
  State<TimePicker> createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  TimeOfDay initialTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TimePicker'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            '${initialTime.hour}:${initialTime.minute}',
            style: TextStyle(fontSize: 40),
          ),
          ElevatedButton(
              onPressed: () async {
                final TimeOfDay? timeOfDay = await showTimePicker(
                  context: context,
                  initialTime: initialTime,
                );
                if (timeOfDay != null) {
                  setState(() {
                    initialTime = timeOfDay;
                  });
                }
              },
              child: Text('TimePicker'))
        ]),
      ),
    );
  }
}
