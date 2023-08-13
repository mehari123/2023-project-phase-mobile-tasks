import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/task.dart';
import '../repositories/repository.dart';
import '../../../../core/error/failure.dart';

class ViewTask extends UseCase<Tasks, Params> {
  final TaskInterface repository;

  ViewTask(this.repository);

  @override
  Future<Either<Failure, Tasks>> call(Params params) async {
    return await repository.viewTask(params.id);
  }
}

class Params extends Equatable {
  final String id;

  Params({required this.id});

  String Id() {
    return this.id;
  }

  @override
  List<Object?> get props => [id];
}
