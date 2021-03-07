import 'package:auto_route/auto_route.dart';
import 'package:podcastic/uis/home/home_page.dart';

@CupertinoAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage),
  ],
)
class $AppRouter {}
