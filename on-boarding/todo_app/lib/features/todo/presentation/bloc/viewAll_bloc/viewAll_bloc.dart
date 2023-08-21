import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:todo_app/core/usecases/usecase.dart';
import '../../../../../core/error/error_messages.dart'; // Import the MapFailureToMessage class if it's in a different file
import '../../../domain/entities/task.dart';
import '../../../domain/usecases/view_all_tasks.dart';

part 'viewAll_event.dart';
part 'viewAll_state.dart';

class ViewAllBloc extends Bloc<TodoEvent, ViewState> {
  final ViewAllTasks viewAllTasks;

  ViewAllBloc(this.viewAllTasks)
      :
        // assert(viewAllTasks != null),
        super(ViewInitial()) {
    on<OnViewAllTAsk>((event, emit) async {
      emit(ViewLoading());

      final result = await viewAllTasks.call(NoParams());
      result.fold((failure) {
        MapFailureToMessage failureMapper = MapFailureToMessage(failure);
        emit(ViewError(failureMapper.mapFailureToMessage()));
      }, (data) {
        emit(ViewLoaded(data));
      });
    });
  }
}
