import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double currentValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Slider'),
        ),
        body: Slider(
          value: currentValue,
          max: 100,
          label: currentValue.round().toString(),
          divisions: 20,
          onChanged: (value) => setState(() {
            currentValue = value;
          }),
        ));
  }
}
