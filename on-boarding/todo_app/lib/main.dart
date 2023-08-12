import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/core/routing/go_router.dart';
import './core/theme/colorschme.dart';
import './core/routing/go_router.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final route = GoRouterProvider();
    return MaterialApp.router(
      title: 'Todo App',
      routerConfig: route.goRouter(),
      theme: lightTheme,
      // darkTheme: darkTheme,
    );
  }
}
