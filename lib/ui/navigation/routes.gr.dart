// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../features/empty_page.dart' as _i4;
import '../features/filter_page/filter_page.dart' as _i2;
import '../features/main_page/main_page.dart' as _i3;
import '../features/tab_page.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    TabRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.TabPage(),
      );
    },
    FilterRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.FilterPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.MainPage(),
      );
    },
    EmptyRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.EmptyPage(),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          TabRoute.name,
          path: '/',
          children: [
            _i5.RouteConfig(
              MainRoute.name,
              path: 'home',
              parent: TabRoute.name,
            ),
            _i5.RouteConfig(
              EmptyRoute.name,
              path: 'revenue',
              parent: TabRoute.name,
            ),
          ],
        ),
        _i5.RouteConfig(
          FilterRoute.name,
          path: '/filter-page',
        ),
      ];
}

/// generated route for
/// [_i1.TabPage]
class TabRoute extends _i5.PageRouteInfo<void> {
  const TabRoute({List<_i5.PageRouteInfo>? children})
      : super(
          TabRoute.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'TabRoute';
}

/// generated route for
/// [_i2.FilterPage]
class FilterRoute extends _i5.PageRouteInfo<void> {
  const FilterRoute()
      : super(
          FilterRoute.name,
          path: '/filter-page',
        );

  static const String name = 'FilterRoute';
}

/// generated route for
/// [_i3.MainPage]
class MainRoute extends _i5.PageRouteInfo<void> {
  const MainRoute()
      : super(
          MainRoute.name,
          path: 'home',
        );

  static const String name = 'MainRoute';
}

/// generated route for
/// [_i4.EmptyPage]
class EmptyRoute extends _i5.PageRouteInfo<void> {
  const EmptyRoute()
      : super(
          EmptyRoute.name,
          path: 'revenue',
        );

  static const String name = 'EmptyRoute';
}
