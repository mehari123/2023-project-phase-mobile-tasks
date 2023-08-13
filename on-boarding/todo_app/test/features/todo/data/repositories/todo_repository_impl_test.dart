import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:todo_app/core/platform/network_info.dart';
import 'package:todo_app/features/todo/data/local/todolocal_data_source.dart';
import 'package:todo_app/features/todo/data/remote/todo_data_source.dart';
import 'package:todo_app/features/todo/data/repositeries/todo_repository_impl.dart';

class MockRemoteDataSource extends Mock implements TodoRemoteDataSource {}

class MockLocalDataSource extends Mock implements TodoLocalDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  TodoRepositoryImpl repository;
  MockRemoteDataSource mockRemoteDataSource;
  MockLocalDataSource mockLocalDataSource;
  MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockRemoteDataSource = MockRemoteDataSource();
    mockLocalDataSource = MockLocalDataSource();
    mockNetworkInfo = MockNetworkInfo();
    repository = TodoRepositoryImpl(
      remoteDataSource: mockRemoteDataSource,
      localDataSource: mockLocalDataSource,
      networkInfo: mockNetworkInfo,
    );
  });
}
