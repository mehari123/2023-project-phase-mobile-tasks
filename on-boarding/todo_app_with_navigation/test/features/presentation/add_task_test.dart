import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app_with_navigation/features/presentation/add_task.dart';
// import 'package:your_app_name_here/add_task.dart';

void main() {
  group(
    "test add task widget",
    () {
      testWidgets('widget build correctly', (WidgetTester tester) async {
        // Build our app and trigger a frame.
        await tester.pumpWidget(MaterialApp(home: add_task()));

        // Verify that the widget is built without errors.
        expect(find.byType(add_task), findsOneWidget);
      });

      testWidgets('Create new task test with valid input',
          (WidgetTester tester) async {
        await tester.pumpWidget(MaterialApp(home: add_task()));

        final taskName = "Test Task";
        final dueDate = "2023-08-08";
        final description = "Test description";

        // Enter task details in the text fields
        await tester.enterText(find.byKey(Key("taskNameField")), taskName);
        await tester.enterText(find.byKey(Key("dueDateField")), dueDate);
        await tester.enterText(
            find.byKey(Key("descriptionField")), description);

        // Tap the "Add task" button
        await tester.tap(find.text("Add task"));
        await tester.pumpAndSettle();

        // Verify that the task was added and the correct data was passed back
        final newTaskData =
            await tester.widget<add_task>(find.byType(add_task));
        expect(newTaskData.taskNameController.text, taskName);
        expect(newTaskData.dueDateController.text, dueDate);
        expect(newTaskData.descriptionController.text, description);
      });

      testWidgets('Create new task test with valid empty input',
          (WidgetTester tester) async {
        await tester.pumpWidget(MaterialApp(home: add_task()));

        final taskName = "";
        final dueDate = "";
        final description = "";

        // Enter task details in the text fields
        await tester.enterText(find.byKey(Key("taskNameField")), taskName);
        await tester.enterText(find.byKey(Key("dueDateField")), dueDate);
        await tester.enterText(
            find.byKey(Key("descriptionField")), description);

        // Tap the "Add task" button
        await tester.tap(find.text("Add task"));
        await tester.pumpAndSettle();

        // Verify that the task was added and the correct data was passed back
        final newTaskData =
            await tester.widget<add_task>(find.byType(add_task));
        expect(newTaskData.taskNameController.text, taskName);
        expect(newTaskData.dueDateController.text, dueDate);
        expect(newTaskData.descriptionController.text, description);
      });
    },
  );
}
