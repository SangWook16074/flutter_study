import 'package:flutter/material.dart';

class ScrollBarPage extends StatefulWidget {
  const ScrollBarPage({super.key});

  @override
  State<ScrollBarPage> createState() => _ScrollBarPageState();
}

class _ScrollBarPageState extends State<ScrollBarPage> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ScrollBar'),
      ),
      body: Scrollbar(
        controller: _scrollController,
        child: ListView.builder(
          controller: _scrollController,
          itemCount: 50,
          itemBuilder: (context, index) => ListTile(
            title: Text('item : $index'),
          ),
        ),
      ),
    );
  }
}
