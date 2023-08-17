import 'package:todo_app/features/todo/domain/entities/task.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';

class TaskInterface {
  Future<Either<Failure, List<Tasks>>> tasksList() async {
    try {
      final task1 = Tasks(
          id: "1",
          title: "title1",
          description: "description1",
          dueDate: DateTime.now(),
          isDone: false);
      return Right([task1]);
    } catch (e) {
      return Left(
          Failure("error" as List)); // Handle the failure case appropriately
    }
  }

  Future<Either<Failure, List<Tasks>>> addTask(Tasks task) async {
    try {
      // Add your logic here to add the task
      // For now, just returning an empty list as a placeholder
      return Right([]);
    } catch (e) {
      return Left(Failure("error")); // Handle the failure case appropriately
    }
  }

  Future<Either<Failure, List<Tasks>>> ViewTask(Tasks task) async {
    try {
      // Add your logic here to delete the task
      // For now, just returning an empty list as a placeholder
      return Right([]);
    } catch (e) {
      return Left(Failure("error")); // Handle the failure case appropriately
    }
  }
}









  // void viewCompletedTasks();
  // void viewPendingTasks();
  // void editTask(int taskIndex,
  //     {String? title,
  //     String? description,
  //     DateTime? dueDate,
  //     bool? isCompleted});
  // void deleteTask(int taskIndex);