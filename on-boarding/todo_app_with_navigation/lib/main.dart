import 'package:flutter/material.dart';
import 'package:todo_app_with_navigation/components/task_detail.dart';
import 'header_view/header.dart';
import 'image_view/image.dart';
import 'components/task_list.dart';
import 'components/add_task.dart';
import 'homepage.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => const homepage(),
        "/addtask": (context) => add_task(),
        "/taskdetail": (context) => task_detail(),
      },
    );
  }
}
