import 'package:blog_example/src/pages/bottoma_nav/home.dart';
import 'package:blog_example/src/pages/bottoma_nav/my_page.dart';
import 'package:flutter/material.dart';

import 'menu.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  var _index = 0;

  List _pages = [
    Home(),
    MyPage(),
    Menu(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('bottomNavigation'),
      ),
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _index,
        onTap: (value) {
          setState(() {
            _index = value;
            print(_index);
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'home',
              activeIcon: Icon(Icons.home)),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'mypage',
              activeIcon: Icon(Icons.account_circle_rounded)),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'menu'),
        ],
      ),
    );
  }
}
