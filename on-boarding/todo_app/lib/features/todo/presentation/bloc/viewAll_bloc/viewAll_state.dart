part of 'viewAll_bloc.dart';

@immutable
sealed class ViewState extends Equatable {
  @override
  List<Object> get props => [];
}

final class ViewInitial extends ViewState {}

final class ViewLoading extends ViewState {}

final class ViewLoaded extends ViewState {
  List<Tasks> tasks;

  ViewLoaded(this.tasks);
}

final class ViewError extends ViewState {
  String errorMessage;

  ViewError(this.errorMessage);
}
