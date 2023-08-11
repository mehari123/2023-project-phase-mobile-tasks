import 'package:flutter/material.dart';
import 'features/dashboard/presentation/components/onboarding.dart';
import 'features/dashboard/presentation/components/task_detail.dart';
import 'features/dashboard/presentation/header_view/header.dart';
import 'features/dashboard/presentation/image_view/image.dart';
import 'features/dashboard/presentation/components/add_task.dart';
import 'features/dashboard/presentation/homepage.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => const homepage(),
        // "/addtask": (context) => add_task(),
        "/taskdetail": (context) => task_detail(),
        "/onboarding": (context) => Onbaording(),
      },
    );
  }
}
