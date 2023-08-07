import 'task.dart';

class TaskManager {
  Task task1 =
      Task("title1", "UI/UX \n Desing App", DateTime.now().toString(), false);
  Task task2 =
      Task("title2", "Candidate selection", DateTime.now().toString(), false);
  Task task3 = Task("title3", "Foot ball 3", DateTime.now().toString(), false);
  List<Task> tasks = [];

  TaskManager() {
    defaultTasks();
  }

  void defaultTasks() {
    tasks = [];
    tasks.addAll([task1, task2, task3]);
  }

  void addTask(String name, String description, String date) {
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

  void updateTask(
      int ind, String newName, String newDescription, String newDate) {
    if (tasks[ind] != null) {
      tasks[ind].name = newName;
      tasks[ind].description = newDescription;
      tasks[ind].date = newDate;
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
