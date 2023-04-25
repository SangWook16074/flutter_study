import 'package:blog_example/src/pages/second.dart';
import 'package:flutter/material.dart';

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).pushNamed('/Second');
              },
              icon: Icon(Icons.arrow_forward),
              label: Text('Push'),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => Second()),
                    (route) => false);
              },
              icon: Icon(Icons.arrow_forward),
              label: Text('PushAndRemoveUntil'),
            ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Second()));
              },
              icon: Icon(Icons.arrow_forward),
              label: Text('PushAndRemoveUntil'),
            )
          ],
        ),
      ),
    );
  }
}
