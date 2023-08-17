import 'package:todo_app/features/todo/data/resources/remote/todo_data_source.dart';
import 'package:http/http.dart' as http;
import 'package:todo_app/features/todo/domain/usecases/view_all_tasks.dart';

import '../../models/todo_model.dart';

class TodoRemoteDataSourceImpl implements TodoRemoteDataSource {
  final http.Client client;

  TodoRemoteDataSourceImpl({required this.client});

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

  @override
  // TODO: implement stringify
  bool? get stringify => throw UnimplementedError();

  @override
  Future<List<todoModel>> viewAllTask() {
    // TODO: implement viewAllTask
    throw UnimplementedError();
  }

  // @override
  // Future<List<todoModel>> addTask(todoModel task) {
  //   // TODO: implement addTask
  //   throw UnimplementedError();
  // }

  // @override
  // // TODO: implement props
  // List<Object?> get props => throw UnimplementedError();

  // @override
  // Future<List<todoModel>> viewAllTask() {
  //   // TODO: implement viewAllTask
  //   throw UnimplementedError();
  // }

  // @override
  // Future<todoModel> viewTask(String id) {
  //   // TODO: implement viewTask
  //   throw UnimplementedError();
  // }

  // @override
  // // TODO: implement stringify
  // bool? get stringify => throw UnimplementedError();
}
