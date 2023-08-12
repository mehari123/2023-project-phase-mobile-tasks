// import 'package:dartz/dartz.dart';
// import 'package:equatable/equatable.dart';
// import '../repositories/taskInterface.dart';
// import '../entities/todo_task.dart';
// import '../../../../core/error/failurs.dart';

// class TaskManager implements TaskInterface {
//   @override
//   Future<Either<failure, List<ToDoTask>>> todoList(
//       [List<ToDoTask>? tasks]) async {
//     final date = DateTime(2021, 10, 8);
//     List<ToDoTask> taskList = tasks ??
//         [
//           ToDoTask("title1", "description1", date, false),
//         ];

//     // You can perform further operations on taskList if needed

//     return Right(taskList);
//   }

//   @override
//   Future<Either<failure, List<ToDoTask>>> addTask(ToDoTask task) async {
//     return Right([]);
//   }
// }
