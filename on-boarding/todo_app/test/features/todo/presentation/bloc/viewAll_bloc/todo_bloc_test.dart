import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:todo_app/core/error/failure.dart';
import 'package:todo_app/core/usecases/usecase.dart';
import 'package:todo_app/features/todo/data/repositeries/todo_repository_impl.dart';
import 'package:todo_app/features/todo/domain/entities/task.dart';

import 'package:todo_app/features/todo/domain/usecases/view_all_tasks.dart';
import 'package:todo_app/features/todo/presentation/bloc/viewAll_bloc/viewAll_bloc.dart';
import 'todo_bloc_test.mocks.dart';

@GenerateMocks([ViewAllTasks, Tasks, TodoRepositoryImpl])
void main() {
  late TodoBloc todoBloc;
  late MockViewAllTasks mockViewAllTasks;

  setUp(() {
    mockViewAllTasks = MockViewAllTasks();
    todoBloc = TodoBloc(mockViewAllTasks);
  });

  test('initial state should be InitialState', () {
    expect(todoBloc.state, ViewInitial());
  });

  group('LoadAllTasksEvent', () {
    final tasks = [
      Tasks(
          id: "1",
          title: 'Task 1',
          description: "",
          dueDate: DateTime.now(),
          isDone: false),
      Tasks(
          id: "2",
          title: 'Task 2',
          description: "",
          dueDate: DateTime.now(),
          isDone: false)
    ];

    blocTest<TodoBloc, ViewState>(
      'emits [ViewLoading, ViewLoaded] when successful',
      build: () => todoBloc,
      act: (bloc) {
        when(mockViewAllTasks(NoParams()))
            .thenAnswer((_) async => Right(tasks));
        bloc.add(OnViewAllTAsk());
      },
      expect: () => [ViewLoading(), ViewLoaded(tasks)],
    );

    blocTest<TodoBloc, ViewState>(
      'emits [LoadingState, ViewError] when unsuccessful',
      build: () => todoBloc,
      act: (bloc) {
        when(mockViewAllTasks(NoParams())).thenAnswer(
            (_) async => const Left(ServerFailure("An error occurred")));
        bloc.add(OnViewAllTAsk());
      },
      expect: () => [ViewLoading(), ViewError('An error occurred')],
    );
  });
}
