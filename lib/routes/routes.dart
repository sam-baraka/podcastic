import 'package:auto_route/auto_route_annotations.dart';
import 'package:podcastic/uis/home/home_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: HomePage, initial: true),
  ],
)
class $Router {}
