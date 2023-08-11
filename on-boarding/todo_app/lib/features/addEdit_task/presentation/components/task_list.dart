import 'package:flutter/material.dart';
import '../../domain/usecases/todo_list.dart';
import '../../domain/entities/todo_task.dart';

// ignore: camel_case_types
class task_list extends StatelessWidget {
  final List<ToDoTask> task_lists;

  const task_list({required this.task_lists});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      margin: EdgeInsets.only(left: 15, right: 15, top: 20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Task List",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontFamily: "Roboto",
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: task_lists
                  .length, // Assuming you have a List<ToDoTask> taskList
              itemBuilder: (context, index) {
                ToDoTask task =
                    task_lists[index]; // Get the task at the current index

                return Container(
                  key:
                      Key("Container-$index"), // Use a unique key for each item
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 250, 250, 250),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        task.title,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      IconButton(
                        onPressed: () async {
                          List? args = await Navigator.pushNamed(
                            context,
                            '/addtask',
                            arguments: [task, index],
                          ) as List?;

                          // Handle navigation and update logic here
                        },
                        icon: Icon(Icons.edit),
                      ),
                      Container(
                        width: 150,
                        child: Row(
                          children: [
                            Icon(
                              task.isDone
                                  ? Icons.check_circle
                                  : Icons.error_outline,
                              color: task.isDone
                                  ? Color.fromARGB(255, 1, 114, 25)
                                  : Color.fromARGB(255, 240, 6, 6),
                              size: 28,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
