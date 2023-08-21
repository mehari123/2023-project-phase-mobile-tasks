import 'dart:convert';

import 'package:http/http.dart' as http;
import '../models/todo_model.dart';
import 'todo_remot_data_source.dart';

class TodoRemoteDataSourceImpl implements TodoRemoteDataSource {
  final http.Client client;

  TodoRemoteDataSourceImpl({required this.client});

  @override
  Future<List<todoModel>> viewAllTask() async {
    // TODO: implement viewAllTask
    String apiUrl =
        'https://api-nodejs-todolist.herokuapp.com/task?completed=true'; // Use the correct URL here
    Uri uri = Uri.parse(apiUrl);

    final response = await client.get(
      uri,
      headers: {
        'Authorization': 'Bearer your_token_here',
        'Content-Type': 'application/json'
      },
    );

    return [todoModel.fromJson(json.decode(response.body))];
  }

  @override
  Future<List<todoModel>> addTask(todoModel task) {
    // TODO: implement addTask
    throw UnimplementedError();
  }

  @override
  Future<todoModel> viewTask(String id) {
    // TODO: implement viewTask
    throw UnimplementedError();
  }

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

  @override
  // TODO: implement stringify
  bool? get stringify => throw UnimplementedError();
}
