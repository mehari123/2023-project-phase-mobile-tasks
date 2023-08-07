import 'package:flutter/material.dart';
import 'header_view/header.dart';
import 'image_view/image.dart';
import 'components/task_list.dart';
import 'models/task.dart';
import 'models/taskManager.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Frame1(),
      ]),
    );
  }
}

class Frame1 extends StatelessWidget {
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
                  task_list(),
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
              TaskManager taskm = TaskManager();
              Task task = Task("", "", "", false);

              Navigator.pushNamed(context, "/addtask",
                  arguments: [task, taskm.tasks.length]);
            },
            child: Text("Create task"),
          ),
        ),
      ],
    );
  }
}
