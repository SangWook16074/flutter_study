import 'package:blog_example/src/pages/alert_dialog.dart';
import 'package:blog_example/src/pages/bottoma_nav/bottom_nav.dart';
import 'package:blog_example/src/pages/buttons.dart';
import 'package:blog_example/src/pages/container.dart';
import 'package:blog_example/src/pages/list_view.dart';
import 'package:blog_example/src/pages/page_view.dart';
import 'package:blog_example/src/pages/row_column.dart';
import 'package:blog_example/src/pages/text_field.dart';
import 'package:flutter/material.dart';

import 'pages/grid_view.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Study'),
      ),
      body: ListView(
        children: [
          _buildItems('1. bottomNavigationBar', BottomNav()),
          _buildItems('2. Container', ContainerPage()),
          _buildItems('3. Row & Column', RowColumn()),
          _buildItems('4. TextField', TextFieldPage()),
          _buildItems('5. Buttons', Buttons()),
          _buildItems('6. AlertDialog', AlertDialogPage()),
          _buildItems('7. ListView', ListViewPage()),
          _buildItems('8. PageView', PageViewPage()),
          _buildItems('9. GridView', GridViewPage()),
        ],
      ),
    );
  }

  Widget _buildItems(String title, Widget page) {
    return Column(
      children: [
        ListTile(
          title: Text(
            title,
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          onTap: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => page)),
        ),
        Divider(),
      ],
    );
  }
}
