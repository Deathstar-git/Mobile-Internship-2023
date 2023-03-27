import 'package:auto_route/auto_route.dart';
import '../features/main_page/main_page.dart';
import '../features/filter_page/filter_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: MainPage,
        initial: true,
    children: [
      AutoRoute(page: FilterPage),
    ]),
  ],
)
class $AppRouter {}