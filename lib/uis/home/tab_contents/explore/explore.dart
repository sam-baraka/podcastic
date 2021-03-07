import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: CustomScrollView(
      slivers: [
        CupertinoSliverNavigationBar(
          largeTitle:
              Text("Explore podcasts", style: GoogleFonts.redHatDisplay()),
        ),
        SliverFillRemaining(
          child: Column(
            children: [
              // Container(
              //   decoration:
              //       BoxDecoration(border: Border.all(color: Colors.grey)),
              //   child: CupertinoTextFormFieldRow(
              //     prefix: Icon(CupertinoIcons.mic),
              //     placeholder: 'Podcast name, topic, category...',
              //     placeholderStyle: TextStyle(
              //         color: CupertinoTheme.brightnessOf(context) ==
              //                 Brightness.dark
              //             ? Colors.white
              //             : Colors.grey),
              //   ),
              // ),
              Flexible(
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: (MediaQuery.of(context).size.height /
                              MediaQuery.of(context).size.width)
                          .ceil()),
                  children: [
                    Category(
                      gradient:
                          LinearGradient(colors: [Colors.red, Colors.blue]),
                    ),
                    Category(
                      gradient:
                          LinearGradient(colors: [Colors.yellow, Colors.green]),
                    ),
                    Category(
                      gradient:
                          LinearGradient(colors: [Colors.cyan, Colors.blue]),
                    ),
                    Category(
                      gradient: LinearGradient(
                          colors: [Colors.pink, Colors.greenAccent]),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}

class Category extends StatelessWidget {
  final LinearGradient gradient;

  const Category({Key key, this.gradient}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), gradient: gradient),
        height: 50,
        child: GridTile(
          child: FlutterLogo(
            textColor: gradient.colors[0],
            style: FlutterLogoStyle.markOnly,
          ),
          header: Text(
            "Comedy",
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          footer: Text(
            "Comedy lorem ipsum th ebest is here",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
