import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../domain/entities/task.dart';
import '../domain/entities/todo_task.dart';
import '../domain/usecases/todo_list.dart';
import 'components/task_list.dart';
import 'header_view/header.dart';
import 'image_view/image.dart';

class HomePage extends StatelessWidget {
  final List<Tasks> task_lists;

  HomePage(this.task_lists);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Column(
                children: [
                  header(),
                  image(),
                  task_list(task_lists: task_lists),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: 180,
          height: 46,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 235, 9, 9).withOpacity(0.5),
                // spreadRadius: 10,
                // blurRadius: 20,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: TextButton(
            onPressed: () {
              var ind = task_lists.length - 1;
              final result = GoRouter.of(context).go('/addtask/$ind');
              // GoRouter.of(context).go(
              //   '/addtask',
              //   extra: [task_lists, task_lists.length],
              // );
            },
            child: Text("Create task"),
          ),
        ),
      ],
    );
  }
}
