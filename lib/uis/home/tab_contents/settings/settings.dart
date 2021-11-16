import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Settings"),
      ),
      child: Center(
          child: Text(
        "Settings",
        style: GoogleFonts.redHatDisplay(
          color: CupertinoTheme.brightnessOf(context) == Brightness.dark
              ? Colors.white
              : Colors.black,
        ),
      )),
    );
  }
}
