import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container App'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 100,
          color: Colors.red,
        ),
      ),
    );
  }
}
