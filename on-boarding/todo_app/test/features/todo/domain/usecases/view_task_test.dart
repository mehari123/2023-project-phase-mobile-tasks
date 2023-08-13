import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:todo_app/core/error/failure.dart';
import 'package:todo_app/features/todo/domain/entities/task.dart';
import 'package:todo_app/features/todo/domain/repositories/repository.dart'; // Adjust the import path
import 'package:todo_app/features/todo/domain/usecases/view_task.dart'; // Adjust the import path

void main() {
  late ViewTask useCase;
  late MockTaskRepository mockRepository;

  setUp(() {
    mockRepository = MockTaskRepository();
    useCase = ViewTask(mockRepository);
  });

  test('View Task Test', () async {
    final task = Tasks(
      id: "1",
      title: 'Sample Task',
      description: 'This is a sample task for testing.',
      dueDate: DateTime.now(),
      isDone: false,
    );
    final Params params = Params(id: "1");

    when(useCase.call(params)).thenAnswer(
      (_) async => Right(task),
    );

    final result = await useCase.call(Params(id: "1"));

    expect(result, Right(task));
  });
}

class MockTaskRepository extends Mock implements TaskInterface {
  @override
  Future<Either<Failure, Tasks>> viewTask(String id) async {
    // Return a mocked task for testing
    // You can customize this behavior for different test cases
    return Right(Tasks(
      id: "1",
      title: 'Sample Task',
      description: 'This is a sample task for testing.',
      dueDate: DateTime.now(),
      isDone: false,
    ));
  }
}
