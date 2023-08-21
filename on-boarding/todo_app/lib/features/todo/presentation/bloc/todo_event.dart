part of 'todo_bloc.dart';

@immutable
sealed class TodoEvent extends Equatable {}

class ViewAllTask extends TodoEvent {
  @override
  List<Object?> get props => [];
}
