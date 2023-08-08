import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app_with_navigation/components/task_list.dart';
import 'package:todo_app_with_navigation/models/task.dart';
import 'package:todo_app_with_navigation/models/taskManager.dart';
// Replace with actual imports

void main() {
  testWidgets('Test task list widget', (WidgetTester tester) async {
    // Create a mock list of tasks
    List<Task> mockTasks = [
      Task("Task 1", "Description 1", "2023-08-08", false),
      Task("Task 2", "Description 2", "2023-08-09", true),
    ];

    // Create a mock TaskManager instance with the mock tasks
    TaskManager mockTaskManager = TaskManager();
    mockTaskManager.tasks = mockTasks;

    // Build the task list widget with the mock TaskManager instance
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: task_list(
              mockTaskManager), // Provide the mock TaskManager instance
        ),
      ),
    );

    // Verify if the "Task List" text is present
    expect(find.text("Task List"), findsOneWidget);

    // Pump the widget to reflect the changes
    await tester.pump();

    // Verify if the two task items are visible
    expect(find.byKey(Key("Container")), findsNWidgets(3));

    // Verify if the first task name is displayed
    expect(find.text("Task 1"), findsOneWidget);

    // Simulate tapping the edit button on the first task
    await tester.tap(find.byIcon(Icons.edit).first);
    await tester.pump();

    // Verify if the edit screen is navigated to
    expect(find.text("Edit Task"), findsOneWidget);
    expect(find.text("Task 1"), findsOneWidget);
    expect(find.text("Description 1"), findsOneWidget);

    // Simulate updating the task
    // ...

    // Verify if the task has been updated in the list
    expect(find.text("Updated Task Name"), findsOneWidget);

    // You can continue writing more test cases for different interactions and scenarios
  });
}
