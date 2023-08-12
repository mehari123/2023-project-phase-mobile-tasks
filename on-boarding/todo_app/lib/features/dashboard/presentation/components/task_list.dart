import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../domain/entities/task.dart';
import '../../domain/usecases/todo_list.dart';
import '../../domain/entities/todo_task.dart';
import 'package:intl/intl.dart';

// ignore: camel_case_types
class task_list extends StatefulWidget {
  final List<Tasks> task_lists;

  const task_list({required this.task_lists});

  @override
  State<task_list> createState() => _task_listState();
}

class _task_listState extends State<task_list> {
  @override
  bool isChecked = false;

  void toggleCheckbox(index) {
    isChecked = widget.task_lists[index].isDone ?? false;

    if (!isChecked) {
      setState(() {
        widget.task_lists[index].isDone = true; // Update the state [task_lists
      });
    } else {
      // Do nothing when already checked
    }
  }

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
              itemCount: widget.task_lists
                  .length, // Assuming you have a List<ToDoTask> taskList
              itemBuilder: (context, index) {
                Tasks task = widget.task_lists[index];
                final date1 = task.dueDate ?? DateTime.now();
                String formattedDate = DateFormat('yyyy-MM-dd HH:mm:ss')
                    .format(date1); // Get the task at the current index

                return Container(
                  key:
                      Key("Container-$index"), // Use a unique key for each item
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(255, 250, 250, 250),
                  ),

                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors
                                  .blue, // Change this color to your desired background color
                              borderRadius: BorderRadius.circular(
                                  8), // You can adjust the radius as needed
                            ),
                            child: TextButton(
                              onPressed: () {
                                GoRouter.of(context).go('/taskDetail/$index');
                                // Handle navigation and update logic here
                              },
                              child: Text(
                                task.title,
                                style: TextStyle(
                                  color:
                                      Colors.white, // Text color on the button
                                  fontSize: 22,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () async {
                              var ind = index;
                              GoRouter.of(context).go('/addtask/$ind');

                              // Handle navigation and update logic here
                            },
                            icon: Icon(Icons.edit),
                          ),
                          Container(
                            width: 150,
                            child: Row(
                              children: [
                                // Icon(
                                //   task.isDone ?? false
                                //       ? Icons.check_circle
                                //       : Icons.error_outline,
                                //   color: task.isDone ?? false
                                //       ? Color.fromARGB(255, 1, 114, 25)
                                //       : Color.fromARGB(255, 240, 6, 6),
                                //   size: 28,
                                // ),
                                GestureDetector(
                                  onTap: () {
                                    toggleCheckbox(index);
                                  },
                                  child: Icon(
                                    task.isDone ?? false
                                        ? Icons.check_box
                                        : Icons.check_box_outline_blank,
                                    size: 48.0,
                                    color: task.isDone ?? false
                                        ? Colors.green
                                        : Colors.grey,
                                  ),
                                ),

                                IconButton(
                                  onPressed: () {
                                    // Handle delete logic here
                                    setState(() {
                                      widget.task_lists.removeAt(index);
                                    });
                                  },
                                  icon: Icon(Icons.delete),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            formattedDate,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
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
