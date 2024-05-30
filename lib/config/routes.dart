import 'package:five_seconds/features/apps_installed/presentation/views/view_apps_intalled.dart';
import 'package:five_seconds/shared/screens/screens_barriel.dart';
import 'package:go_router/go_router.dart';

import '../features/apps_tracked/presentation/view/view_apps_tracked.dart';

final appRoute = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const FullLoaderScreen(),
    ),
    ShellRoute(
      builder: (context, state, child) => HomeApps(childView: child),
      routes: [
        GoRoute(
          path: '/tracking-list',
          builder: (context, state) => const ViewAppsTracked(),
        ),
        GoRoute(
          path: '/home-apps',
          builder: (context, state) => const ViewAppsInstalled(),
        ),
      ],
    )
  ],
);
