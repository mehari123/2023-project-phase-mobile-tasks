import 'package:equatable/equatable.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/features/dashboard/domain/entities/todo_task.dart';
import 'package:dartz/dartz.dart';
import 'package:todo_app/core/error/failurs.dart';
import 'package:todo_app/features/domain/repositories/taskinterface.dart';
import 'package:todo_app/features/dashboard/domain/usecases/todo_list.dart';
import '../../../../lib/features/dashboard/domain/entities/task.dart';
// Import the actual implementation

void main() {
  late TaskManager taskManager; // Declare the taskManager variable

  setUp(() {
    taskManager = TaskManager(); // Use the actual implementation for testing
  });

  group('todoList', () {
    test('should return a list of todo tasks or an empty list', () async {
      // Act
      final result = await taskManager.todoList();

      // Assert
      expect(result, isA<Right<failure, List<ToDoTask>>>());
      expect(result.getOrElse(() => []), isA<List<ToDoTask>>());
    });

    test('should return an empty list if there are no tasks', () async {
      // Act
      final result = await taskManager.todoList();
      final date = DateTime(2021, 10, 8);
      final excpected = [ToDoTask("title1", "description1", date, false)];

      // Assert
      expect(result, isA<Right<failure, List<ToDoTask>>>());
      expect(result.getOrElse(() => []), equals(excpected));
    });

    test('should return a list of tasks', () async {
      // Arrange
      final expectedTasks = [
        ToDoTask("title1", "description1", DateTime.now(), false),
        ToDoTask("title2", "description2", DateTime.now(), true),
      ];

      // Act
      final result = await taskManager.todoList(expectedTasks);

      // Assert
      expect(result, isA<Right<failure, List<ToDoTask>>>());
      expect(result.getOrElse(() => []), equals(expectedTasks));
    });
  });
}
