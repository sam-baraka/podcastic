import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:podcastic/test_images/test_images.dart';

class PodcastTile extends StatelessWidget {
  String image = TestImages.getRandomImage();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        title: Text("Tesla buys 1500000 in bit coin"),
        subtitle: Text("Lew Later"),
      ),
    );
  }
}
