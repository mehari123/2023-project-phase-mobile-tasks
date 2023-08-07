import 'package:flutter/material.dart';
import '../header_view/header.dart';
import '../models/task.dart';

class add_task extends StatelessWidget {
  add_task({super.key});

  final modalRoute = 'addtask';
  final TextEditingController taskNameController = TextEditingController();
  final TextEditingController dueDateController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as List;
    final ind = args[1];
    final task = args[0];

    return Material(
      child: Container(
        width: 390,
        height: 844,
        color: Color.fromRGBO(255, 255, 255, 1),
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Stack(
            children: [
              Positioned(
                left: 7,
                right: 7,
                top: 60,
                child: Container(
                  width: 400,
                  height: 470,
                  color: Color.fromARGB(255, 255, 255, 255),
                  child: Column(
                    children: [
                      header(),
                      Text(
                        "Create new tasks",
                        style: TextStyle(
                          fontSize: 18, // Adjust the font size as needed
                          fontWeight: FontWeight
                              .bold, // Adjust the font weight as needed
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: 300,
                            height: 90,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            padding: EdgeInsets.all(
                                10), // Adding padding of 10 pixels to all sides of the Container.
                            margin: EdgeInsets.symmetric(vertical: 5),
                            child: Center(
                              child: Container(
                                width: 250,
                                child: Column(
                                  children: [
                                    Text("Main task name",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(255, 238, 0, 0),
                                        )),
                                    TextField(
                                      controller: taskNameController,
                                      maxLines: 1,
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 21, 21, 21)),
                                      decoration: InputDecoration(
                                        hintText:
                                            '${task.name ?? 'your task title'}',
                                        filled: true,
                                        fillColor:
                                            Color.fromARGB(255, 211, 211, 211),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ), // Adding vertical margin of 5 pixels to the Container.
                          ),
                          Container(
                            width: 300,
                            height: 90,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            padding: EdgeInsets.all(
                                10), // Adding padding of 10 pixels to all sides of the Container.
                            margin: EdgeInsets.symmetric(vertical: 5),
                            child: Center(
                              child: Container(
                                width: 250,
                                child: Column(
                                  children: [
                                    Text("Due date",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(255, 238, 0, 0),
                                        )),
                                    TextField(
                                      controller: dueDateController,
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 21, 21, 21)),
                                      maxLines: 1,
                                      decoration: InputDecoration(
                                        hintText:
                                            "${task.date ?? 'your due date'}",
                                        filled: true,
                                        fillColor:
                                            Color.fromARGB(255, 229, 229, 229),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ), // Adding vertical margin of 5 pixels to the Container.
                          ),
                          Container(
                            width: 300,
                            height: 120,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            padding: EdgeInsets.all(
                                10), // Adding padding of 10 pixels to all sides of the Container.
                            margin: EdgeInsets.symmetric(vertical: 40),
                            child: Center(
                              child: Container(
                                width: 250,
                                child: Column(
                                  children: [
                                    Text("Description",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(255, 238, 0, 0),
                                        )),
                                    TextField(
                                      controller: descriptionController,
                                      maxLines: 2,
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 21, 21, 21)),
                                      decoration: InputDecoration(
                                        hintText:
                                            "${task.description ?? 'ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua'}",
                                        filled: true,
                                        fillColor:
                                            Color.fromARGB(255, 203, 203, 203),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 16,
                top: 440,
                child: Container(
                  width: 358,
                  height: 132,
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //     image: NetworkImage("https://via.placeholder.com/358x132"),
                  //     fit: BoxFit.fill,
                  //   ),
                  // ),
                ),
              ),
              Positioned(
                left: 95,
                top: 600,
                child: Container(
                    width: 177,
                    height: 76,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color:
                              Color.fromARGB(255, 222, 0, 0).withOpacity(0.5),
                          // spreadRadius: 10,
                          // blurRadius: 20,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: TextButton(
                      onPressed: () {
                        Task newTask = Task(
                          taskNameController.text,
                          descriptionController.text,
                          dueDateController.text,
                          false,
                        );

                        // Adding an animated transition with Navigator.push
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    FadeTransition(
                              opacity: animation,
                              child: AddTaskResultScreen(newTask, ind),
                            ),
                          ),
                        );
                      },
                      child: Text("Add task"),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// New screen to show the added task and index
class AddTaskResultScreen extends StatelessWidget {
  final Task newTask;
  final int index;

  AddTaskResultScreen(this.newTask, this.index);

  @override
  Widget build(BuildContext context) {
    // Implement the UI to show the added task and index
    return Scaffold(
      appBar: AppBar(
        title: Text("Added Task"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Task Name: ${newTask.name}"),
            Text("Due Date: ${newTask.date}"),
            Text("Description: ${newTask.description}"),
            Text("Index: $index"),
          ],
        ),
      ),
    );
  }
}
