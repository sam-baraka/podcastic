import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcastic/test_images/test_images.dart';
import 'package:podcastic/uis/home/tab_contents/tab_contents.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CupertinoTabScaffold(
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
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 50,
          child: Material(
            color: Colors.black54,
            elevation: 20,
            child: ListTile(
              contentPadding: EdgeInsets.all(4),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                    height: 50,
                    width: 50,
                    child: Image.asset(
                      TestImages.getRandomImage(),
                      fit: BoxFit.fitHeight,
                    )),
              ),
              trailing: CupertinoButton(
                padding: EdgeInsets.all(0),
                onPressed: () {
                  //TODO: Add on pressed
                },
                child: Icon(
                  CupertinoIcons.pause,
                  size: 40,
                  color: Colors.white,
                ),
              ),
              title: Text(
                "All about the perseverance rover by Samuel Baraka",
                style: GoogleFonts.redHatDisplay(
                    color: Colors.white, fontSize: 18),
              ),
              subtitle: Text(
                "All about the perseverance rover by Samuel Baraka",
                style: GoogleFonts.redHatDisplay(color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
