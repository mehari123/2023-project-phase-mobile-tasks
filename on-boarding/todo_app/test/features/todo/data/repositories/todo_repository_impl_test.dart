import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/annotations.dart';
import 'package:equatable/equatable.dart';
import 'package:todo_app/core/error/exception.dart';
import 'package:todo_app/core/error/failure.dart';
// import 'package:my_app/mocks.dart';

@GenerateNiceMocks([
  MockSpec<NetworkInfo>(),
  MockSpec<TodoRemoteDataSource>(),
  MockSpec<TodoLocalDataSource>(),
  MockSpec<TodoRepositoryImpl>(),
  MockSpec<ServerException>(),
  MockSpec<CacheException>(),
])
import 'package:todo_app/core/platform/network_info.dart';
import 'package:todo_app/features/todo/data/local/todolocal_data_source.dart';
import 'package:todo_app/features/todo/data/models/todo_model.dart';
import 'package:todo_app/features/todo/data/remote/todo_remot_data_source.dart';
import 'package:todo_app/features/todo/data/repositeries/todo_repository_impl.dart';
import 'package:todo_app/features/todo/domain/entities/task.dart';

import 'todo_repository_impl_test.mocks.dart';

// class MockRemoteDataSource extends Mock implements TodoRemoteDataSource {}

// class MockLocalDataSource extends Mock implements TodoLocalDataSource {}

// class MockNetworkInfo extends Mock implements NetworkInfo {}

// class MockNetworkInfo implements NetworkInfo {}

void main() {
  late TodoRepositoryImpl repository;
  late MockTodoRemoteDataSource mockRemoteDataSource;
  late MockTodoLocalDataSource mockLocalDataSource;
  late MockNetworkInfo mockNetworkInfo;
  late todoModel taskModel;

  setUp(() {
    taskModel = todoModel(
        id: '1',
        title: 'title',
        description: 'description',
        dueDate: DateTime.now(),
        isDone: false);

    mockRemoteDataSource = MockTodoRemoteDataSource();
    mockLocalDataSource = MockTodoLocalDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repository = TodoRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
      networkInfo: mockNetworkInfo,
    );
  });

  group('get to do model', () {
    // DATA FOR THE MOCKS AND ASSERTIONS
    // We'll use these three variables throughout all the tests

    test('should check if the device is online', () {
      //arrange
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
      // act
      repository.viewAllTask();
      // assert
      verify(mockNetworkInfo.isConnected);
    });
  });

  group('device is online', () {
    // This setUp applies only to the 'device is online' group
    setUp(() {
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => true);
    });

    test(
      'should return remote data when the call to remote data source is successful',
      () async {
        // arrange
        when(mockRemoteDataSource.viewAllTask())
            .thenAnswer((_) async => [taskModel]);
        // act
        final result = await repository.viewAllTask();
        // assert
        verify(mockRemoteDataSource.viewAllTask());

        // final equal = const TypeMatcher<Right<Failure, List<Tasks>>>().having(
        //   (r) => r.getOrElse(() => []),
        //   'value',
        //   const TypeMatcher<List<Tasks>>().having(
        //     (list) => list.map((task) => taskModel == task).contains(true),
        //     'contains taskModel',
        //     true,
        //   ),
        // );

        // expect(result, equal);
      },
    );

    test(
      'should cache the data locally when the call to remote data source is successful',
      () async {
        // arrange
        when(mockRemoteDataSource.viewAllTask())
            .thenAnswer((_) async => [taskModel]);
        // act
        final result = await repository.viewAllTask();
        // assert
        verify(mockRemoteDataSource.viewAllTask());
        final task = await mockRemoteDataSource.viewAllTask();
        verify(mockLocalDataSource.cachTasks(task));
      },
    );
    test(
      'should return server failure when the call to remote data source is unsuccessful',
      () async {
        // arrange
        when(mockRemoteDataSource.viewAllTask()).thenThrow(ServerException());
        // act
        final result = await repository.viewAllTask();
        // assert
        verify(mockRemoteDataSource.viewAllTask());
        verifyZeroInteractions(mockLocalDataSource);
        expect(result, equals(Left(ServerFailure("Connection not found"))));
      },
    );
  });

  group('device is offline', () {
    setUp(() {
      when(mockNetworkInfo.isConnected).thenAnswer((_) async => false);
    });

    test(
      'should return last locally cached data when the cached data is present',
      () async {
        // arrange
        when(mockLocalDataSource.viewAllTask())
            .thenAnswer((_) async => [taskModel]);
        // act
        final result = await repository.viewAllTask();
        // assert

        final equal2 = const TypeMatcher<Right<Failure, List<Tasks>>>().having(
          (r) => r.getOrElse(() => []),
          'value',
          const TypeMatcher<List<Tasks>>().having(
            (list) => list.map((task) => taskModel == task).contains(true),
            'contains taskModel',
            true,
          ),
        );

        verifyZeroInteractions(mockRemoteDataSource);
        verify(mockLocalDataSource.viewAllTask());
        expect(result, equals(equal2));
      },
    );
  });

  test(
    'should return CacheFailure when there is no cached data present',
    () async {
      // arrange
      when(mockLocalDataSource.viewAllTask()).thenThrow(CacheException());
      // act
      final result = await repository.viewAllTask();
      // assert
      verifyZeroInteractions(mockRemoteDataSource);
      verify(mockLocalDataSource.viewAllTask());
      expect(result, equals(Left(CacheFailure("Cach fauled"))));
    },
  );
}
