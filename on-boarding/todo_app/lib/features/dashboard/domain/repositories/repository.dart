import 'package:todo_app/features/dashboard/domain/entities/task.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';

abstract class TaskInterface {
  Future<Either<Failure, Tasks>> viewTask(String id);

  Future<Either<Failure, List<Tasks>>> tasksList();

  Future<Either<Failure, List<Tasks>>> addTask(Tasks task);
}





  // void viewCompletedTasks();
  // void viewPendingTasks();
  // void editTask(int taskIndex,
  //     {String? title,
  //     String? description,
  //     DateTime? dueDate,
  //     bool? isCompleted});
  // void deleteTask(int taskIndex);