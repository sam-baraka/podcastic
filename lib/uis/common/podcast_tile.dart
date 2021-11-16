import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcastic/test_images/test_images.dart';

class PodcastTile extends StatelessWidget {
  final String image = TestImages.getRandomImage();

  PodcastTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Material(
        color: CupertinoTheme.brightnessOf(context) == Brightness.dark
            ? Colors.black
            : Colors.white,
        child: ListTile(
          leading: SizedBox(
              height: 50,
              width: 50,
              child: Image.asset(
                image,
                fit: BoxFit.fitHeight,
              )),
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
          trailing: CupertinoButton(
              onPressed: () {},
              child: const Icon(CupertinoIcons.cloud_download)),
        ),
      ),
    );
  }
}
