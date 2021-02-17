import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:podcastic/uis/home/tab_contents/tab_contents.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return Home();
          case 1:
            return Explore();
          case 2:
            return MyPodcasts();
          case 3:
            return Settings();
          default:
            return Home();
        }
      },
      tabBar: CupertinoTabBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.lightbulb), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.list_dash), label: 'My podcasts'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
