# 2023-project-phase-mobile-tasks

Architecture
The project is organized according to the Clean Architecture pattern, which provides a way to organize code for better separation of concerns and maintainability. The project structure is as follows:


lib

├── core

│  ├── error

|  |___routing
 
|  |___Usecases

|

│ 
  
│ 

├── features

│   └── todo

│       ├── data

│       │   ├── models

│       │   │   └── todo_model.dart

│       │   └── repositories

│       │       └── todo_repository.dart

│       └── presentation

│           └── todo_screen.dart


|

|___fitures

|     |___fiture_reader.dart

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

Data Flow
The data flow in the project is as follows:

The user interacts with the Todo screen.
The Todo screen calls the TodoRepository to get a list of todos.
The TodoRepository queries the database for a list of todos.
The TodoRepository returns the list of todos to the Todo screen.
The Todo screen displays the list of todos to the user.

