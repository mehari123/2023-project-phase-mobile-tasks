import 'dart:io';

class Task {
  String name;
  String description;
  DateTime date;
  bool isDone;

  Task(this.name, this.description, this.date, this.isDone);

  void updateTask(String newName, String newDescription, DateTime newDate) {
    name = newName;
    description = newDescription;
    date = newDate;
  }

  void markAsDone() {
    isDone = true;
  }

  void markAsPending() {
    isDone = false;
  }

  @override
  String toString() {
    return 'Task: $name\nDescription: $description\nDate: $date\nStatus: ${isDone ? "Completed" : "Pending"}\n';
  }
}

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

void main() {
  TaskManager taskManager = TaskManager();
  String choice;

  do {
    print('----- Task Manager Menu -----');
    print('1. Add a new task');
    print('2. View all tasks');
    print('3. View only completed tasks');
    print('4. View only pending tasks');
    print('5. Edit a task');
    print('6. Delete a task');
    print('7. Exit');
    stdout.write('Enter your choice (1-7): ');
    choice = stdin.readLineSync() ?? '0';

    final selected = int.parse(choice);
    print(selected);
    switch (selected) {
      case 1:
        stdout.write('Enter task name: ');
        String name = stdin.readLineSync() ?? "";
        stdout.write('Enter task description: ');
        String description = stdin.readLineSync() ?? "";
        taskManager.addTask(name, description, DateTime.now());
        print('Task added successfully.');
        break;

      case 2:
        print('All Tasks:');
        taskManager.viewAllTasks();
        break;

      case 3:
        print('Completed Tasks:');
        taskManager.viewCompletedTasks();
        break;

      case 4:
        print('Pending Tasks:');
        taskManager.viewPendingTasks();
        break;

      case 5:
        stdout.write('Enter the name of the task to edit: ');
        String? taskName = stdin.readLineSync(); // Get task name here
        Task task = taskManager.tasks.firstWhere(
            (task) => task.name == taskName,
            orElse: () => Task("", "", DateTime.now(),
                false)); // Provide a default value that should never be found in the task list
        if (task.name.isNotEmpty) {
          stdout.write(
              'Enter new task name or press enter if you do not want to change it: ');
          String newName = stdin.readLineSync()!;
          if (newName.isEmpty) {
            newName = task.name;
          }

          stdout.write('Enter new task description: ');
          String newDescription = stdin.readLineSync()!;
          if (newDescription.isEmpty) {
            newDescription = task.description;
          }

          stdout.write(
              'Enter new status (done or not done) or press enter to keep the current status: ');
          String newStatus = stdin.readLineSync()!;
          if (newStatus.isEmpty) {
            newStatus = task.isDone ? 'done' : 'not done';
          }

          if (newStatus.toLowerCase() == 'done') {
            task.markAsDone();
          } else if (newStatus.toLowerCase() == 'not done') {
            task.markAsPending();
          }

          taskManager.editTask(task, newName, newDescription, DateTime.now());
        } else {
          print('Task not found in the task list.');
        }
        break;

      case 6:
        stdout.write('Enter the name of the task to delete: ');
        String taskToDelete = stdin.readLineSync() ?? "Default";
        Task task =
            taskManager.tasks.firstWhere((task) => task.name == taskToDelete);
        if (task != "default") {
          taskManager.deleteTask(task);
        } else {
          print('Task not found in the task list.');
        }
        break;

      case 7:
        print('Exiting Task Manager...');
        break;

      default:
        print('Invalid choice. Please enter a number from 1 to 7.');
    }
  } while (choice != '7');
}
