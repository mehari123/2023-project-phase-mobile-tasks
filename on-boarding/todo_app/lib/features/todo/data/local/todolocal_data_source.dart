import '../models/todo_model.dart';
import 'package:equatable/equatable.dart';

abstract class TodoLocalDataSource extends Equatable {
  TodoLocalDataSource();

  Future<todoModel> viewTask(String id);

  Future<List<todoModel>> viewAllTask();

  Future<List<todoModel>> addTask(todoModel task);
  Future<List<todoModel>> cachTasks(List<todoModel> task);
}
