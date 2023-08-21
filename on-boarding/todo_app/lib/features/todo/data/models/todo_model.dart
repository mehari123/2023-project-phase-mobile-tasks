import 'package:meta/meta.dart';
import '../../domain/entities/task.dart';
import 'dart:convert';

class todoModel extends Tasks {
  todoModel(
      {required String id,
      required String title,
      required String description,
      required DateTime dueDate,
      required bool isDone})
      : super(
            id: id,
            title: title,
            description: description,
            dueDate: dueDate,
            isDone: isDone);

  factory todoModel.fromJson(Map<String, dynamic> json) {
    return todoModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      dueDate: DateTime.parse(json['dueDate']),
      isDone: json['isDone'],
    );
  }

  @override
  List<Object?> get props => [id, title, description, dueDate, isDone];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'dueDate': dueDate.toString(),
      'isDone': isDone,
    };
  }
}
