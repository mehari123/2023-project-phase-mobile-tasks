import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/features/todo/presentation/bloc/viewAll_bloc/viewAll_bloc.dart';

import '../../../../injection.dart';
import '../../domain/entities/task.dart';
import '../../domain/entities/todo_task.dart';
import '../../domain/usecases/view_all_tasks.dart';
import '../widgets/loading_widget.dart';
import '../widgets/message_display.dart';
import 'components/task_list.dart';
import 'components/header_view/header.dart';
import 'components/image_view/image.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return buildbody(context);
  }
}

BlocProvider<ViewAllBloc> buildbody(BuildContext context) {
  return BlocProvider(
    create: (context) => sl<ViewAllBloc>()..add(OnViewAllTAsk()),
    child: Column(
      children: [
        Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Column(
                children: [
                  header(),
                  image(),
                  BlocBuilder<ViewAllBloc, ViewState>(
                    builder: (context, state) {
                      if (state is ViewInitial) {
                        return MessageDisplay(
                          message: 'Starting the app!',
                        );
                      } else if (state is ViewLoading) {
                        return LoadingWidget();
                      } else if (state is ViewLoaded) {
                        return task_list(task_lists: state.tasks);
                      } else if (state is ViewError) {
                        return MessageDisplay(
                          message: state.errorMessage,
                        );
                      } else {
                        // Handle any other possible states here
                        return CircularProgressIndicator(); // For example, show a loading indicator
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: 180,
          height: 46,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(0),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 235, 9, 9).withOpacity(0.5),
                // spreadRadius: 10,
                // blurRadius: 20,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: TextButton(
            onPressed: () {
              final result = GoRouter.of(context).go('/addtask/');
              // GoRouter.of(context).go(
              //   '/addtask',
              //   extra: [task_lists, task_lists.length],
              // );
            },
            child: Text("Create task"),
          ),
        ),
      ],
    ),
  );
}
