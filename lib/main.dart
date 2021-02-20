import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:podcastic/colors/app_colors.dart';
import 'package:podcastic/routes/routes.gr.dart';
import 'package:podcastic/routes/routes.gr.dart' as r;

void main() {
  runApp(PodcastApp());
}

class PodcastApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        title: 'Podcastic',
        theme: CupertinoThemeData(primaryColor: AppColors.appLightGreenColor),
        builder: ExtendedNavigator.builder<r.Router>(
            router: r.Router(), initialRoute: Routes.homePage));
  }
}
