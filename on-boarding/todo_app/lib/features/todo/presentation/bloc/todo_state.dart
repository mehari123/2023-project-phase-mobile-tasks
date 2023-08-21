part of 'todo_bloc.dart';

@immutable
sealed class TodoState extends Equatable {}

final class TodoInitial extends TodoState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

final class TodoLoading extends TodoState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

final class TodoLoaded extends TodoState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

final class TodoError extends TodoState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
