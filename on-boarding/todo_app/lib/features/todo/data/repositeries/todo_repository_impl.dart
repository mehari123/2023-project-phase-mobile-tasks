import 'package:dartz/dartz.dart';

import 'package:todo_app/core/error/failure.dart';
import 'package:todo_app/features/todo/data/models/todo_model.dart';

import 'package:todo_app/features/todo/domain/entities/task.dart';

import '../../../../core/error/exception.dart';
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
  Future<Either<Failure, List<Tasks>>>? viewAllTask() async {
    final neti = await networkInfo.isConnected;
    final netR = await neti ?? false;
    if (netR) {
      try {
        final remoteResult = await remoteDataSource.viewAllTask();
        localDataSource.cachTasks(remoteResult);
        return Right(await remoteDataSource.viewAllTask());
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final taskV = await localDataSource.viewAllTask();
        return Right(taskV);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, Tasks>> viewTask(String id) {
    // TODO: implement viewTask
    throw UnimplementedError();
  }
}
