import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:todo_app/features/todo/data/repositeries/todo_repository_impl.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/task.dart';
import '../repositories/repository.dart';
import '../repositories/taskInterface.dart';
import '../../../../core/error/failure.dart';
import '../../domain/repositories/repository.dart';

class ViewAllTasks extends UseCase<List<Tasks>, NoParams> {
  final TodoRepository repository;
  // late  TodoRepository repository;
  ViewAllTasks(this.repository);

  @override
  Future<Either<Failure, List<Tasks>>> call(NoParams params) async {
    final eitherTasks = await repository.viewAllTask();

    return eitherTasks!.fold(
      (failure) {
        // Handle left (error) case
        return Left(failure); // Return the left value (error)
      },
      (tasksList) {
        // Handle right (success) case
        return Right(tasksList); // Return the right value (list of tasks)
      },
    );
  }

  // Future<List<Tasks>> getTasks() async {
  //   final Either<Failure, List<Tasks>> eitherTasks =
  //       await ViewAllTasks().call(NoParams());

  //   final List<Tasks> _tasks = eitherTasks.getOrElse(() => []);
  //   return _tasks;
  // }
}
