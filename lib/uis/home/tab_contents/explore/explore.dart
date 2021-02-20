import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
          child: Text(
        "Explore",
        style: GoogleFonts.redHatDisplay(
          color: CupertinoTheme.brightnessOf(context) == Brightness.dark
              ? Colors.white
              : Colors.black,
        ),
      )),
    );
    ;
  }
}
