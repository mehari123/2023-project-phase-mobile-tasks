import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_app/features/todo/domain/entities/todo_task.dart';
import '../../../core/usecases/usecase.dart';
import '../domain/entities/task.dart';
import '../domain/usecases/view_all_tasks.dart';
import 'home.dart';

class Dashboard extends StatelessWidget {
  final Widget child;
  Dashboard({Key? key, required this.child})
      : super(key: key); // Add a constructor to receive the child widget

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Todo App',
            style: TextStyle(
              color: Colors.white, // Set the text color
              fontSize: 20.0, // Set the font size
              fontWeight: FontWeight.bold, // Set the font weight
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: child,
      ),
    );
  }
}
