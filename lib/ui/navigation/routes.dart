import 'package:auto_route/auto_route.dart';
import '../features/empty_page.dart';
import '../features/main_page/main_page.dart';
import '../features/filter_page/filter_page.dart';
import '../features/tab_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',

  routes: <AutoRoute>[
    AutoRoute(
      path: "/",
      page: TabPage,
      children: [
        // First bottomnavigation bar tab
        AutoRoute(
          path: 'home',
          page: MainPage,
        ),

        // Second bottomnavigation bar tab
        AutoRoute(
          path: "revenue",
          page: EmptyPage,
        ),
      ],
    ),
    // AutoRoute(page: MainPage, initial: true, name: "MainRouter"),
    // AutoRoute(page: EmptyPage, name: "EmptyRouter"),
    AutoRoute(page: FilterPage)
  ],
)
class $AppRouter {}