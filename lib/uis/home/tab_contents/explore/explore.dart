import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Explore extends StatelessWidget {
  var delegate = SliverPersistentHeaderDelegate;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxScrolled) {
        return [
          CupertinoSliverNavigationBar(
            largeTitle: Text("Explore", style: GoogleFonts.redHatDisplay()),
          ),
          SliverPersistentHeader(
            delegate: _SliverAppBarDelegate(CupertinoTextField(
              placeholder: "Search podcasts",
            )),
          )
        ];
      },
      body: Column(
        children: [],
      ),
    ));
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._child);

  final Widget _child;

  @override
  double get minExtent => 50;
  @override
  double get maxExtent => 50;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      child: _child,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
