import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_app/features/todo/data/models/todo_model.dart';

import 'todolocal_data_source.dart';

const CACHED_TODO = 'CACHED_TODO';

class TodoLocalDataSourceImpl implements TodoLocalDataSource {
  final SharedPreferences sharedPreferences;

  TodoLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<List<todoModel>> viewAllTask() async {
    final jsonString = sharedPreferences.getString(CACHED_TODO);
    if (jsonString != null) {
      final List<dynamic> jsonList = json.decode(jsonString);
      final todos =
          jsonList.map((jsonObject) => todoModel.fromJson(jsonObject)).toList();
      return todos;
    } else {
      final defaultTodo = [
        todoModel(
          id: "0",
          title: "Test",
          description: "Test",
          dueDate: DateTime.now(),
          isDone: false,
        ),
      ];
      return defaultTodo;
    }
  }

  // @override
  // Future<void> cachTasks(List<todoModel> triviaToCache) {
  //   // TODO: implement cacheNumberTrivia
  //   // return null;
  // }

  @override
  Future<List<todoModel>> addTask(todoModel task) {
    // TODO: implement addTask
    throw UnimplementedError();
  }

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

  @override
  // TODO: implement stringify
  bool? get stringify => throw UnimplementedError();

  @override
  Future<todoModel> viewTask(String id) {
    // TODO: implement viewAllTask
    throw UnimplementedError();
  }

  @override
  Future<bool> cachTasks(List<todoModel> task) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('stringValue', "abc");
    return true;

    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // prefs.setString('stringValue', "abc");
    // return await sharedPreferences.setString(
    //     CACHED_TODO, json.encode(task.toJson()));

    // return true;
  }
}
