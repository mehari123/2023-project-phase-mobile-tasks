# 2023-project-phase-mobile-tasks/on-boarding/todo_app

A new Flutter project.

## Getting Started![photo_2023-08-07_10-22-54](https://github.com/mehari123/2023-project-phase-mobile-tasks/assets/88460961/7df52d1c-cef9-4fdc-83ef-071f11166379)


This project is a starting![photo_2023-08-07_10-23-03](https://github.com/mehari123/2023-project-phase-mobile-tasks/assets/88460961/795d7ae3-8264-4d7e-ac19-2243b9656c48)
 point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Architecture The project is organized according to the Clean Architecture pattern, which provides a way to organize code for better separation of concerns and maintainability. The project structure is as follows:

lib

├── core

│ ├── error

| |___routing

| |___Usecases

|

│

│

├── features

│ └── todo

│ ├── data

│ │ ├── models

│ │ │ └── todo_model.dart

│ │ └── repositories

│ │ └── todo_repository.dart

│ └── presentation

│ └── todo_screen.dart

|

|___fitures

| |___fiture_reader.dart

|

|── test

├── todo

│   |__presentation

    |__domain

    |__data

        |

        |__model

            |

            |__todo_model_test.dart
The core folder contains the shared core components, routing, and error handling logic. The features folder includes feature-specific modules. The features/todo folder is the main module for the Todo feature. The test folder contains all the unit and widget tests.

Data Flow The data flow in the project is as follows:

The user interacts with the Todo screen. The Todo screen calls the TodoRepository to get a list of todos. The TodoRepository queries the database for a list of todos. The TodoRepository returns the list of todos to the Todo screen. The Todo screen displays the list of todos to the user.
