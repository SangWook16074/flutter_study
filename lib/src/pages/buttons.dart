import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'ElevatedButton',
              ),
              style: ElevatedButton.styleFrom(
                  fixedSize: Size(200, 100),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.green),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('OutlinedButton'),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.green,
                fixedSize: Size(200, 100),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications),
              iconSize: 50,
            ),
            TextButton(onPressed: () {}, child: Text('TextButton'))
          ],
        ),
      ),
    );
  }
}
