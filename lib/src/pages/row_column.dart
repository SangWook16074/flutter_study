import 'package:flutter/material.dart';

class RowColumn extends StatefulWidget {
  const RowColumn({super.key});

  @override
  State<RowColumn> createState() => _RowColumnState();
}

class _RowColumnState extends State<RowColumn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row & Column'),
      ),
      body: Row(
        children: [
          Container(
            width: 50,
            height: 100,
            decoration: BoxDecoration(
                border: Border.all(width: 5.0),
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.red),
          ),
          Container(
            width: 50,
            height: 100,
            decoration: BoxDecoration(
                border: Border.all(width: 5.0),
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.green),
          ),
          Container(
            width: 50,
            height: 100,
            decoration: BoxDecoration(
                border: Border.all(width: 5.0),
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.blue),
          ),
        ],
      ),
    );
  }
}
