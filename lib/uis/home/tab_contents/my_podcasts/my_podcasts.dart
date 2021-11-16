import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:podcastic/uis/uis.dart';

class MyPodcasts extends StatelessWidget {
  const MyPodcasts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text("My podcasts"),
        ),
        child: ListView(
          children: [
            PodcastTile(),
            PodcastTile(),
            PodcastTile(),
          ],
        ));
  }
}
