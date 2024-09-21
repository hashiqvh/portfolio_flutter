import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/UI/detail/pages/detail_page.dart';
import 'package:portfolio/UI/home/pages/home_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');

class AppRoute {
  static late BuildContext context;

  static final GoRouter router = GoRouter(
    // navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        path: Routes.about.path,
        name: Routes.about.name,
        builder: (_, __) => const DetailPage(),
      ),
      GoRoute(
        path: Routes.root.path,
        name: Routes.root.name,
        builder: (context, state) {
          String page = state.uri.queryParameters['page'] ?? 'home';
          return HomePage(
            page: page,
          );
        },
      ),
    ],
    initialLocation: Routes.root.path,
    debugLogDiagnostics: kDebugMode,
    //  refreshListenable: GoRouterRefreshStream(context.watch<AuthBloc>().stream),
    // redirect: (_, GoRouterState state) async {
    //   return Routes.root.path;
    // },
  );

  AppRoute.setStream(BuildContext ctx) {
    context = ctx;
  }
}

enum Routes {
  root("/"),
  about("/about");

  final String path;

  const Routes(this.path);
}
