import 'package:equatable/equatable.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/core/usecases/usecase.dart';
import 'package:todo_app/features/dashboard/domain/entities/todo_task.dart';
import 'package:dartz/dartz.dart';
import 'package:todo_app/core/error/failure.dart';
import 'package:todo_app/features/dashboard/domain/usecases/view_all_tasks.dart';
import '../../../../../lib/features/dashboard/domain/entities/task.dart';
// Import the actual implementation

void main() {
  final todoList = ViewAllTasks(); // Declare the taskManager variable

  setUp(() {
    final todoList =
        ViewAllTasks(); // Use the actual implementation for testing
  });

  group('todoList', () {
    test('should return a list of todo tasks or an empty list', () async {
      // Act
      final result = await todoList.call(NoParams());

      // Assert
      expect(result, isA<Right<Failure, List<Tasks>>>());
      expect(result.getOrElse(() => []), isA<List<Tasks>>());
    });

    test('should return an empty list if there are no tasks', () async {
      // Act
      final result = await todoList.call(NoParams());
      final date = DateTime(2021, 10, 8);
      final excpected = [
        Tasks(
            id: "1",
            title: "title1",
            description: "description1",
            dueDate: date,
            isDone: false)
      ];

      // Assert
      expect(result, isA<Right<Failure, List<Tasks>>>());
      expect(result.getOrElse(() => []), equals(excpected));
    });

    test('should return a list of tasks', () async {
      // Arrange
      final expectedTasks = [
        Tasks(
            id: "1",
            title: "title1",
            description: "description",
            dueDate: DateTime.now(),
            isDone: false),
        Tasks(
            id: "2",
            title: "title2",
            description: "description2",
            dueDate: DateTime.now(),
            isDone: true),
      ];

      // Act
      final result = await todoList.call(NoParams());

      // Assert
      expect(result, isA<Right<Failure, List<Tasks>>>());
      expect(result.getOrElse(() => []), equals(expectedTasks));
    });
  });
}
