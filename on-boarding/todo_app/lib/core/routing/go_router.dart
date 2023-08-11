import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/dashboard/presentation/homepage.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

class GoRouterProvider {
  GoRouter goRouter() {
    return GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: '/',
      routes: [
        ShellRoute(
          navigatorKey: _shellNavigatorKey,
          builder: (context, state, childe) {
            return Homepage(key: state.pageKey, child: child);
          },
          routes: [
            GoRoute(
              path: '/',
              name: "homepage",
              pageBuilder: (context, state) {
                return NoTransitionPage(
                  child: homepage(key: state.pageKey),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
