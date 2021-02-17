import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPodcasts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      child: Center(child: Text("My Podcasts")),
    );
  }
}
