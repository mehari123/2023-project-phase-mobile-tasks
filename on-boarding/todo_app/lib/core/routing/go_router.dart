import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/features/todo/presentation/pages/components/task_detail.dart';
import '../../features/todo/domain/entities/task.dart';

import '../../features/todo/presentation/pages/components/add_task.dart';
import '../../features/todo/presentation/pages/dashboard.dart';
import '../../features/todo/presentation/pages/home.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'shell');

// final Future<List<Tasks>> _tasks = TodoLists().getTasks();
final List<Tasks> _tasks = [
  Tasks(
      id: "1",
      title: "title1",
      description: "description",
      dueDate: DateTime.now(),
      isDone: false),
  Tasks(
      id: "2",
      title: "title2",
      description: "description",
      dueDate: DateTime.now(),
      isDone: false)
];

class GoRouterProvider {
  GoRouter goRouter() {
    return GoRouter(
      navigatorKey: _rootNavigatorKey,
      initialLocation: '/',
      routes: [
        ShellRoute(
          navigatorKey: _shellNavigatorKey,
          builder: (context, state, child) {
            return Dashboard(
              key: state.pageKey,
              child: child,
            );
          },
          routes: [
            GoRoute(
              path: '/',
              name: "homepage",
              pageBuilder: (context, state) {
                return NoTransitionPage(child: HomePage());
              },
            ),
            GoRoute(
              path: '/addTask/:length',
              name: "addTask",
              pageBuilder: (context, state) {
                return NoTransitionPage(
                    child: AddTask(
                        length: int.parse(state.pathParameters['length']!),
                        task_lists: _tasks));
              },
            ),
            GoRoute(
              path: '/taskDetail/:index',
              name: "taskDetail",
              pageBuilder: (context, state) {
                return NoTransitionPage(
                    child: TaskDetail(
                        task:
                            _tasks[int.parse(state.pathParameters['index']!)]));
              },
            ),
          ],
        ),
      ],
    );
  }
}
