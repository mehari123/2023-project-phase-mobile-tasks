import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/task.dart';
import '../repositories/repository.dart';
import '../../../../core/error/failure.dart';

class AddTask extends UseCase<Tasks, Params> {
  final todoRepository repository;

  AddTask(this.repository);

  @override
  Future<Either<Failure, Tasks>> call(Params params) async {
    return await Right(repository.addTask(params.task));
  }
}

class Params extends Equatable {
  final Tasks task;

  Params({required this.task});

  @override
  List<Object?> get props => [task];
}
