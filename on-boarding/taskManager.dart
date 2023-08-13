import 'dartbasics/task.dart';

class TaskManager {
  List<Task> tasks = [];

  void addTask(String name, String description, DateTime date) {
    tasks.add(Task(name, description, date, false));
  }

  void viewAllTasks() {
    if (tasks.isEmpty) {
      print("No tasks found.");
    } else {
      for (var task in tasks) {
        print(task);
      }
    }
  }

  void viewCompletedTasks() {
    final completedTasks = tasks.where((task) => task.isDone).toList();
    if (completedTasks.isEmpty) {
      print("No completed tasks found.");
    } else {
      for (var task in completedTasks) {
        print(task);
      }
    }
  }

  void viewPendingTasks() {
    final pendingTasks = tasks.where((task) => !task.isDone).toList();
    if (pendingTasks.isEmpty) {
      print("No pending tasks found.");
    } else {
      for (var task in pendingTasks) {
        print(task);
      }
    }
  }

  void editTask(
      Task task, String newName, String newDescription, DateTime newDate) {
    if (tasks.contains(task)) {
      task.updateTask(newName, newDescription, newDate);
      print("Task updated successfully.");
    } else {
      print("Task not found in the task list.");
    }
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    print("Task ${task.name} deleted successfully.");
  }
}
