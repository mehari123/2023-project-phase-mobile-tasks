import 'dart:convert';

import 'package:todo_app/features/todo/domain/entities/task.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/features/todo/data/models/todo_model.dart';
import 'package:todo_app/fixtures/fixture_reader.dart';

void main() {
  final task_model = todoModel(
    id: "1",
    title: "title1",
    description: "description1",
    dueDate: DateTime(2021, 10, 10),
    isDone: false,
  );

// ignore: use_function_type_syntax_for_parameters
  group('fromJson', () {
    test(
      'should be a subclass of NumberTrivia entity',
      () async {
        // assert
        expect(task_model, isA<Tasks>());
      },
    );
    test(
      'should return a valid model when the JSON ',
      () async {
        // arrange
        final Map<String, dynamic> jsonMap =
            json.decode(fixture('correctTask.json'));
        // act
        print(jsonMap);
        final result = todoModel.fromJson(jsonMap);
        print(result);
        // assert
        expect(result, task_model);
      },
    );

    test(
      'should return a JSON map containing the proper data',
      () async {
        // act
        final result = task_model.toJson();
        // assert
        final expectedJsonMap = {
          "id": "1",
          "title": "title1",
          "description": "description1",
          "dueDate": "2021-10-10",
          "isDone": false
        };
        expect(result, expectedJsonMap);
      },
    );
  });
}
