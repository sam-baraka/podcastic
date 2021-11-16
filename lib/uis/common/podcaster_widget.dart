import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcastic/test_images/test_images.dart';

class PodcasterWidget extends StatelessWidget {
  final String image = TestImages.getRandomImage();

  PodcasterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: GridTile(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              color: Colors.black54,
              image: DecorationImage(
                  colorFilter:
                      const ColorFilter.mode(Colors.black54, BlendMode.dstATop),
                  image: AssetImage(image),
                  fit: BoxFit.fitHeight)),
          child: GridTile(
            footer: Center(
              child: Text(
                "Waveform podcast",
                style: GoogleFonts.redHatDisplay(
                    color: Colors.white, fontSize: 18),
              ),
            ),
            child: ClipOval(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.fitHeight)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
