import 'package:dartz/dartz.dart';

import 'package:todo_app/core/error/failure.dart';

import 'package:todo_app/features/todo/domain/entities/task.dart';

import '../../../../core/platform/network_info.dart';
import '../../domain/repositories/repository.dart';
import '../local/todolocal_data_source.dart';
import '../remote/todo_data_source.dart';

class TodoRepositoryImpl implements TodoRepository {
  final TodoRemoteDataSource remoteDataSource;
  final TodoLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  TodoRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<Tasks>>> addTask(Tasks task) {
    // TODO: implement addTask

    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Tasks>>> viewAllTask() {
    // TODO: implement viewAllTask
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Tasks>> viewTask(String id) {
    // TODO: implement viewTask
    throw UnimplementedError();
  }
}
