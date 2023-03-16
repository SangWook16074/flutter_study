import 'package:flutter/material.dart';

class AppBarPage extends StatelessWidget {
  const AppBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
        titleTextStyle: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.red,
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.favorite_border_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.send_outlined)),
        ],
        iconTheme: IconThemeData(color: Colors.blue),
        shadowColor: Colors.blue,
        elevation: 0.0,
      ),
      body: Container(),
    );
  }
}
