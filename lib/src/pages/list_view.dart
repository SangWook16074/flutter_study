import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListView'),
        ),
        body: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Container(
                height: 100,
                color: (index % 2 == 0) ? Colors.red : Colors.green,
                child: Center(
                    child: Text(
                  '$index',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                )),
              );
            }));
  }
}
