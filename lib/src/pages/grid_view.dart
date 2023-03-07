import 'dart:math';

import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 5),
        itemCount: 50,
        itemBuilder: (context, index) => Container(
          width: 100,
          height: 100,
          color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
        ),
      ),
    );
  }
}
