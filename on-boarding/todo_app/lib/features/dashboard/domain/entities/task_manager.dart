// import '../repositories/taskInterface.dart';
// import "todo_task.dart";

// class TaskManager implements ITaskManager {
//   List<ToDoTask> tasks = [];

//   @override
//   void addTask(ToDoTask task) {
//     tasks.add(task);
//   }

//   @override
//   void viewAllTasks() {
//     if (tasks.isEmpty) {
//       print('No tasks found.');
//     } else {
//       for (var i = 0; i < tasks.length; i++) {
//         print(
//             'Task <span class="math-inline">\{i \+ 1\}\:\\n</span>{tasks[i]}');
//       }
//     }
//   }

//   @override
//   void viewCompletedTasks() {
//     List<ToDoTask> completedTasks =
//         tasks.where((task) => task.isCompleted).toList();
//     if (completedTasks.isEmpty) {
//       print('No completed tasks found.');
//     } else {
//       for (var i = 0; i < completedTasks.length; i++) {
//         print(
//             'Completed Task <span class="math-inline">\{i \+ 1\}\:\\n</span>{completedTasks[i]}');
//       }
//     }
//   }

//   @override
//   void viewPendingTasks() {
//     List<ToDoTask> pendingTasks =
//         tasks.where((task) => !task.isCompleted).toList();
//     if (pendingTasks.isEmpty) {
//       print('No pending tasks found.');
//     } else {
//       for (var i = 0; i < pendingTasks.length; i++) {
//         print(
//             'Pending Task <span class="math-inline">\{i \+ 1\}\:\\n</span>{pendingTasks[i]}');
//       }
//     }
//   }

//   @override
//   void editTask(int taskIndex,
//       {String? title,
//       String? description,
//       DateTime? dueDate,
//       bool? isCompleted}) {
//     if (taskIndex < 0 || taskIndex >= tasks.length) {
//       print('Invalid task index.');
//     } else {
//       ToDoTask task = tasks[taskIndex];
//       task.title = title ?? task.title;
//       task.description = description ?? task.description;
//       task.dueDate = dueDate ?? task.dueDate;
//       task.isCompleted = isCompleted ?? task.isCompleted;
//       print('Task ${taskIndex + 1} edited successfully.');
//     }
//   }

//   @override
//   void deleteTask(int taskIndex) {
//     if (taskIndex < 0 || taskIndex >= tasks.length) {
//       print('Invalid task index.');
//     } else {
//       tasks.removeAt(taskIndex);
//       print('Task ${taskIndex + 1} deleted successfully.');
//     }
//   }
// }
