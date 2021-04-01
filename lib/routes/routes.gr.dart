// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;

import '../uis/home/home_page.dart' as _i2;

class AppRouter extends _i1.RootStackRouter {
  AppRouter();

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (entry) {
      return _i1.CupertinoPageX(entry: entry, child: _i2.HomePage());
    }
  };

  @override
  List<_i1.RouteConfig> get routes =>
      [_i1.RouteConfig(HomeRoute.name, path: '/')];
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}
