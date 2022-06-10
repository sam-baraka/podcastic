import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:podcastic/uis/custom/context_menu.dart' as ctx;

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: CupertinoTextField(
          placeholder: 'Search',
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
              children: const [
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
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ctx.CupertinoContextMenu(
        actions: const [
          Text('sam'),
          Text('sam'),
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
