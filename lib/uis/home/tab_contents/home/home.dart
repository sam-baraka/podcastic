import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcastic/uis/common/podcast_tile.dart';
import 'package:podcastic/uis/common/podcaster_widget.dart';

part 'for_you_widget.dart';
part 'new_podcasts_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: CustomScrollView(
      slivers: [
        CupertinoSliverNavigationBar(
          largeTitle: Text('Podcastic', style: GoogleFonts.redHatDisplay()),
        ),
        SliverFillRemaining(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Top podcasts for you',
                  style: GoogleFonts.redHatDisplay(
                      color: CupertinoTheme.brightnessOf(context) ==
                              Brightness.dark
                          ? Colors.white
                          : Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                const ForYouWidget(),
                Text(
                  'New podcasts',
                  style: GoogleFonts.redHatDisplay(
                      color: CupertinoTheme.brightnessOf(context) ==
                              Brightness.dark
                          ? Colors.white
                          : Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                const Expanded(child: NewPodcastsWidget())
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
