import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:podcastic/test_images/test_images.dart';
import 'package:podcastic/uis/home/tab_contents/tab_contents.dart';
import 'package:marquee/marquee.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CupertinoTabScaffold(
          tabBuilder: (context, index) {
            switch (index) {
              case 0:
                return const Home();
              case 1:
                return const Explore();
              case 2:
                return const MyPodcasts();
              case 3:
                return const Settings();
              default:
                return const Home();
            }
          },
          tabBar: CupertinoTabBar(
            items: const [
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
          child: GestureDetector(
            onTap: () {
              showCupertinoModalPopup(
                  context: context,
                  builder: (builder) => CupertinoPopupSurface(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 200,
                              width: 200,
                              child: Image.asset(
                                TestImages.getRandomImage(),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                              child: Marquee(
                                text:
                                    "All about the perseverance rover by Samuel Baraka",
                                scrollAxis: Axis.horizontal,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                blankSpace: 20.0,
                                velocity: 100.0,
                                pauseAfterRound: const Duration(seconds: 1),
                                startPadding: 10.0,
                                accelerationDuration:
                                    const Duration(seconds: 1),
                                accelerationCurve: Curves.linear,
                                decelerationDuration:
                                    const Duration(milliseconds: 500),
                                decelerationCurve: Curves.easeOut,
                                style: GoogleFonts.redHatDisplay(
                                    color:
                                        CupertinoTheme.brightnessOf(context) ==
                                                Brightness.dark
                                            ? Colors.white
                                            : Colors.black,
                                    fontSize: 16),
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: CupertinoButton(
                                    padding: const EdgeInsets.all(0),
                                    onPressed: () {},
                                    child: const Icon(
                                      CupertinoIcons.backward_end_alt,
                                      size: 40,
                                    ),
                                  ),
                                ),
                                CupertinoButton(
                                  padding: const EdgeInsets.all(0),
                                  onPressed: () {},
                                  child: const Icon(
                                    CupertinoIcons.gobackward_10,
                                    size: 40,
                                  ),
                                ),
                                Expanded(
                                  child: CupertinoButton(
                                    padding: const EdgeInsets.all(0),
                                    onPressed: () {},
                                    child: const Icon(
                                      CupertinoIcons.play,
                                      size: 40,
                                    ),
                                  ),
                                ),
                                CupertinoButton(
                                  padding: const EdgeInsets.all(0),
                                  onPressed: () {},
                                  child: const Icon(
                                    CupertinoIcons.goforward_10,
                                    size: 40,
                                  ),
                                ),
                                Expanded(
                                  child: CupertinoButton(
                                    padding: const EdgeInsets.all(0),
                                    onPressed: () {},
                                    child: const Icon(
                                      CupertinoIcons.forward_end_alt,
                                      size: 40,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ));
            },
            child: Material(
              color: CupertinoTheme.brightnessOf(context) == Brightness.dark
                  ? Colors.black87
                  : Colors.white,
              child: ListTile(
                contentPadding: const EdgeInsets.all(4),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset(
                        TestImages.getRandomImage(),
                        fit: BoxFit.fitHeight,
                      )),
                ),
                trailing: CupertinoButton(
                  padding: const EdgeInsets.all(0),
                  onPressed: () {},
                  child: const Icon(
                    CupertinoIcons.pause,
                    size: 40,
                  ),
                ),
                title: SizedBox(
                  height: 20,
                  child: Marquee(
                    text: "All about the perseverance rover by Samuel Baraka",
                    scrollAxis: Axis.horizontal,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    blankSpace: 20.0,
                    velocity: 100.0,
                    pauseAfterRound: const Duration(seconds: 1),
                    startPadding: 10.0,
                    accelerationDuration: const Duration(seconds: 1),
                    accelerationCurve: Curves.linear,
                    decelerationDuration: const Duration(milliseconds: 500),
                    decelerationCurve: Curves.easeOut,
                    style: GoogleFonts.redHatDisplay(
                        color: CupertinoTheme.brightnessOf(context) ==
                                Brightness.dark
                            ? Colors.white
                            : Colors.black,
                        fontSize: 16),
                  ),
                ),
                // subtitle: Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     CupertinoButton(
                //         padding: EdgeInsets.all(4),
                //         onPressed: () {},
                //         child: Icon(
                //           Icons.replay_10_outlined,
                //           size: 30,
                //         )),
                //     SizedBox(
                //       width: 20,
                //     ),
                //     CupertinoButton(
                //         padding: EdgeInsets.all(4),
                //         onPressed: () {},
                //         child: Icon(
                //           CupertinoIcons.play,
                //           size: 40,
                //         )),
                //     SizedBox(
                //       width: 20,
                //     ),
                //     CupertinoButton(
                //         padding: EdgeInsets.all(4),
                //         onPressed: () {},
                //         child: Icon(Icons.forward_10_outlined, size: 30)),
                //   ],
                // )
              ),
            ),
          ),
        )
      ],
    );
  }
}
