import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:podcastic/uis/custom/context_menu.dart' as ctx;
import 'package:google_fonts/google_fonts.dart';
import 'package:podcastic/uis/common/sliver_app_bar_delegate.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: CupertinoTextField(
          placeholder: "Search",
        ),
      ),
      child: Column(
        children: [
          Flexible(
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: (MediaQuery.of(context).size.height /
                          MediaQuery.of(context).size.width)
                      .ceil()),
              children: [
                Category(),
                Category(),
                Category(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ctx.CupertinoContextMenu(
        actions: [
          Text("sam"),
          Text("sam"),
        ],
        child: Container(
          height: 50,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(20)),
          child: Column(),
        ),
      ),
    );
  }
}
