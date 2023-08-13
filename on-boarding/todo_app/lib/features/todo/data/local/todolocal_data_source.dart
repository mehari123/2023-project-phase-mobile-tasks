import '../models/todo_model.dart';

abstract class TodoLocalDataSource {
  Future<todoModel> viewTask(String id);

  Future<List<todoModel>> viewAllTask();

  Future<List<todoModel>> addTask(todoModel task);
}
