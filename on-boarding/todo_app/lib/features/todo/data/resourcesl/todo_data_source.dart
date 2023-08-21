import '../models/todo_model.dart';
import 'package:equatable/equatable.dart';

abstract class TodoDataSource extends Equatable {
  // TodoRemoteDataSource();

  Future<todoModel> viewTask(String id);

  Future<List<todoModel>> viewAllTask();

  Future<List<todoModel>> addTask(todoModel task);
}
