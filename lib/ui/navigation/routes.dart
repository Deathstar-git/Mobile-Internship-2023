import 'package:auto_route/auto_route.dart';

import '../../main.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: MyHomePage, initial: true),
  ],
)
class $AppRouter {}