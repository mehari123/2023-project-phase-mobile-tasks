import 'package:flutter/material.dart';
import '../models/task.dart';
import '../models/taskManager.dart';

class task_list extends StatefulWidget {
  const task_list({Key? key}) : super(key: key);

  @override
  State<task_list> createState() => _TaskListState();
}

class _TaskListState extends State<task_list> {
  TaskManager taskManager = TaskManager();

  @override
  void initState() {
    super.initState();
    taskManager.defaultTasks();
  }

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
              itemCount: taskManager.tasks.length,
              itemBuilder: (context, index) {
                Task task = taskManager.tasks[index];
                return Container(
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
                        task.name,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      IconButton(
                        onPressed: () async {
                          // Add task button is pressed
                          // You can navigate to the screen where you add tasks here
                          // For example:

                          List? args = await Navigator.pushNamed(
                            context,
                            '/addtask',
                            arguments: [task, index],
                          ) as List?;
                          Task? newTask = args?[0] ??
                              Task("task 1", "description", "02-05-26", false);
                          int ind = args?[1] ?? 0;
                          print(
                              "argssargssargsargssargsargssargsargssargsargssargsargssargsargssargsargssargsargssargs");
                          print(args);
                          if (newTask != null) {
                            taskManager.updateTask(ind, newTask.name,
                                newTask.description, newTask.date);
                          }
                        },
                        icon: Icon(Icons.edit),
                      ),
                      Container(
                        width: 150,
                        child: Row(
                          children: [
                            // Text(
                            //   task.date
                            //       .toString(), // Format this date as you want
                            //   textAlign: TextAlign.left,
                            //   style: TextStyle(
                            //     color: Color.fromARGB(255, 0, 0, 0),
                            //     fontFamily: "Roboto",
                            //     fontWeight: FontWeight.w700,
                            //     fontSize: 18,
                            //   ),
                            // ),
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
