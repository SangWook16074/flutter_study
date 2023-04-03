import 'package:blog_example/src/pages/alert_dialog.dart';
import 'package:blog_example/src/pages/app_bar.dart';
import 'package:blog_example/src/pages/bottoma_nav/bottom_nav.dart';
import 'package:blog_example/src/pages/buttons.dart';
import 'package:blog_example/src/pages/container.dart';
import 'package:blog_example/src/pages/drop_down_button.dart';
import 'package:blog_example/src/pages/list_view.dart';
import 'package:blog_example/src/pages/loading.dart';
import 'package:blog_example/src/pages/page_view.dart';
import 'package:blog_example/src/pages/row_column.dart';
import 'package:blog_example/src/pages/text_field.dart';
import 'package:flutter/material.dart';

import 'pages/floating_action_button.dart';
import 'pages/grid_view.dart';
import 'pages/slider_page.dart';

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
          _buildItems('10. Loading', Loading()),
          _buildItems('11. AppBar', AppBarPage()),
          _buildItems('12. Floating Action Button', FAB()),
          _buildItems('13. DropDonwButton', DropDownButtonPage()),
          _buildItems('14. Slider', SliderPage()),
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
