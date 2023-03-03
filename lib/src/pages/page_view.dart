import 'package:flutter/material.dart';

class PageViewPage extends StatelessWidget {
  const PageViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView'),
      ),
      body: PageView(
        children: [
          Container(
            color: Colors.red,
            child: Center(
                child: Text(
              '1페이지',
              style: TextStyle(fontSize: 40),
            )),
          ),
          Container(
            color: Colors.green,
            child: Center(
                child: Text(
              '2페이지',
              style: TextStyle(fontSize: 40),
            )),
          ),
          Container(
            color: Colors.blue,
            child: Center(
                child: Text(
              '3페이지',
              style: TextStyle(fontSize: 40),
            )),
          ),
        ],
      ),
    );
  }
}
