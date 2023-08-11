// ignore: depend_on_referenced_packages
import 'package:equatable/equatable.dart';

abstract class Task {
  String title;
  String description;
  DateTime dueDate;
  bool isDone;

  Task(this.title, this.description, this.dueDate, this.isDone);
}
