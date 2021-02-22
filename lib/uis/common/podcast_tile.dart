import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcastic/test_images/test_images.dart';

class PodcastTile extends StatelessWidget {
  String image = TestImages.getRandomImage();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: CupertinoTheme.brightnessOf(context) == Brightness.dark
          ? Colors.black
          : Colors.white,
      child: ListTile(
        title: Text(
          "Tesla buys 1500000 in bit coin",
          style: GoogleFonts.redHatDisplay(
            color: CupertinoTheme.brightnessOf(context) == Brightness.dark
                ? Colors.white
                : Colors.black,
          ),
        ),
        subtitle: Text(
          "Lew Later",
          style: GoogleFonts.redHatDisplay(
            color: CupertinoTheme.brightnessOf(context) == Brightness.dark
                ? Colors.white
                : Colors.black,
          ),
        ),
      ),
    );
  }
}
