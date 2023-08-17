import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_app/features/todo/data/resources/local/todolocal_data_source.dart';
import 'package:todo_app/features/todo/data/models/todo_model.dart';
import 'package:todo_app/features/todo/domain/usecases/view_all_tasks.dart';

import '../../../../../core/error/exception.dart';

class TodoLocalDataSourceImpl implements TodoLocalDataSource {
  final SharedPreferences sharedPreferences;

  TodoLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<List<todoModel>> viewAllTask() {
    final jsonString = sharedPreferences.getString("CACHED_NUMBER_TRIVIA");
    if (jsonString != null) {
      return Future.value([todoModel.fromJson(json.decode(jsonString))]);
    } else {
      throw CacheException();
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
  Future<void> cachTasks(List<todoModel> task) {
    // TODO: implement cachTasks
    throw UnimplementedError();
  }
}
