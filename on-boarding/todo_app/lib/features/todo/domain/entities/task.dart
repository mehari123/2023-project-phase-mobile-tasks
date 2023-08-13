import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Tasks extends Equatable {
  String id;
  String title;
  String description;
  DateTime? dueDate;
  bool? isDone;

  Tasks(
      {required this.id,
      required this.title,
      required this.description,
      required this.dueDate,
      required this.isDone})
      : super();

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
