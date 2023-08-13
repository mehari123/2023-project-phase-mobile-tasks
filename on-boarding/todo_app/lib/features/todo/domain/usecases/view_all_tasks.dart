import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/task.dart';
import '../repositories/taskInterface.dart';
import '../../../../core/error/failure.dart';

class ViewAllTasks extends UseCase<List<Tasks>, NoParams> {
  @override
  Future<Either<Failure, List<Tasks>>> call(NoParams params) async {
    final Either<Failure, List<Tasks>> eitherTasks =
        await TaskInterface().tasksList();
    //
    final List<Tasks> _tasks = eitherTasks.fold(
      (failure) {
        // Handle failure case
        print("Error: ${failure.toString()}");
        return []; // or throw an exception if appropriate
      },
      (tasksList) => tasksList,
    );
    return Right(_tasks);
  }

  Future<List<Tasks>> getTasks() async {
    final Either<Failure, List<Tasks>> eitherTasks =
        await ViewAllTasks().call(NoParams());

    final List<Tasks> _tasks = eitherTasks.getOrElse(() => []);
    return _tasks;
  }
}
