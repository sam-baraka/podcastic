import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcastic/test_images/test_images.dart';

part 'for_you_widget.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: CustomScrollView(
      slivers: [
        CupertinoSliverNavigationBar(
          largeTitle: Text("Podcastic", style: GoogleFonts.redHatDisplay()),
        ),
        SliverFillRemaining(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "For you",
                style: GoogleFonts.redHatDisplay(
                    color: CupertinoColors.activeBlue,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              ForYouWidget(),
            ],
          ),
        )
      ],
    ));
  }
}
