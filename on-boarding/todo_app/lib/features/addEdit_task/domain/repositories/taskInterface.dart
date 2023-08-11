import 'package:todo_app/features/dashboard/domain/entities/todo_task.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/error/failurs.dart';
import '../entities/task.dart';

abstract class TaskInterface {
  Future<Either<failure, List<ToDoTask>>> todoList();
  Future<Either<failure, List<ToDoTask>>> addTask(ToDoTask task);
}



  // void viewCompletedTasks();
  // void viewPendingTasks();
  // void editTask(int taskIndex,
  //     {String? title,
  //     String? description,
  //     DateTime? dueDate,
  //     bool? isCompleted});
  // void deleteTask(int taskIndex);