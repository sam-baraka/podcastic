import 'package:flutter/cupertino.dart';

import 'uis/uis.dart';

void main() {
  runApp(PodcastApp());
}

class PodcastApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: HomePage(),
    );
  }
}
