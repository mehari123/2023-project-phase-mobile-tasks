// import 'package:flutter/material.dart';
// import 'package:todo_app/features/dashboard/domain/entities/todo_task.dart';
// import '../domain/usecases/todo_list.dart';
// import 'home.dart';

// class homepage extends StatefulWidget {
//   const homepage({super.key});

//   @override
//   State<homepage> createState() => _homepageState();
// }

// class _homepageState extends State<homepage> {
//   TaskManager taskManager = TaskManager(); // Create an instance of TaskManager
//   List<ToDoTask> task_lists = []; // Initialize an empty list to hold tasks

//   @override
//   void initState() {
//     super.initState();
//     loadTasks(); // Call a method to load tasks when the state is initialized
//   }

//   Future<void> loadTasks() async {
//     final result =
//         await taskManager.todoList(); // Get the task list from TaskManager
//     result.fold(
//       (failure) {
//         // Handle error if needed
//       },
//       (tasks) {
//         setState(() {
//           task_lists = tasks; // Update the state with the loaded tasks
//         });
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView(children: [
//         HomePage(task_lists),
//       ]),
//     );
//   }
// }
