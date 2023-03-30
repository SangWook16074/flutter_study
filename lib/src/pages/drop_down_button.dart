import 'package:flutter/material.dart';

class DropDownButtonPage extends StatefulWidget {
  const DropDownButtonPage({super.key});

  @override
  State<DropDownButtonPage> createState() => _DropDownButtonPageState();
}

class _DropDownButtonPageState extends State<DropDownButtonPage> {
  var currentValue = '1 menu';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drop Down Button'),
        actions: [
          _menuBtn(),
        ],
      ),
    );
  }

  Widget _menuBtn() {
    return DropdownButton(
      value: currentValue,
      items: [
        DropdownMenuItem(value: '1 menu', child: Text('1 menu')),
        DropdownMenuItem(value: '2 menu', child: Text('2 menu')),
        DropdownMenuItem(value: '3 menu', child: Text('3 menu')),
      ],
      onChanged: (String? value) {
        setState(() {
          currentValue = value!;
        });
      },
    );
  }
}
