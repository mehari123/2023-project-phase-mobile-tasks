// import 'dart:convert';

// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';
// // Import the shared_preferences package
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:todo_app/core/error/exception.dart';
// import 'package:todo_app/features/todo/data/resources/local/todolocal_data_source_impl.dart';
// import 'package:todo_app/features/todo/data/models/todo_model.dart';
// import 'package:todo_app/features/todo/domain/usecases/view_all_tasks.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import '../../../../../fixtures/fixture_reader.dart';

// class MockSharedPreferences extends Mock implements SharedPreferences {}
// // import 'todo_local_data_sources.mocks.dart';

// // @GenerateMocks([
// //   MockSharedPreferences
// // ]) // GenerateMocks using your MockSharedPreferences class
// // // Import the shared_preferences package

// void main() {
//   TodoLocalDataSourceImpl dataSource;
//   MockSharedPreferences mockSharedPreferences;
//   mockSharedPreferences = MockSharedPreferences();
//   dataSource =
//       TodoLocalDataSourceImpl(sharedPreferences: mockSharedPreferences);

//   late List<todoModel> todomodelTask;

//   setUp(() {
//     mockSharedPreferences = MockSharedPreferences();
//     dataSource =
//         TodoLocalDataSourceImpl(sharedPreferences: mockSharedPreferences);
//   });

//   group('get cached todoModel', () {
//     todomodelTask = [
//       todoModel.fromJson(json.decode(fixture('correctTask.json')))
//     ];

//     test(
//       'should return NumberTrivia from SharedPreferences when there is one in the cache',
//       () async {
//         // arrange
//         when(mockSharedPreferences.getString("CACHED_NUMBER_TRIVIA"))
//             .thenReturn(fixture('correctTask.json'));
//         // act
//         final result = await dataSource.viewAllTask();
//         // assert
//         verify(mockSharedPreferences.getString('CACHED_NUMBER_TRIVIA'));
//         expect(result, equals(todomodelTask));
//       },
//     );

//     test('should throw a CacheException when there is not a cached value', () {
//       // arrange
//       when(mockSharedPreferences.getString("CACHED_NUMBER_TRIVIA"))
//           .thenReturn(null);
//       // act
//       // Not calling the method here, just storing it inside a call variable
//       final call = dataSource.viewAllTask();
//       // assert
//       // Calling the method happens from a higher-order function passed.
//       // This is needed to test if calling a method throws an exception.
//       expect(() => dataSource.viewAllTask(),
//           throwsA(TypeMatcher<CacheException>()));
//     });
//   });
//   group('TodoLocalDataSource', () {
//     setUp(() {
//       mockSharedPreferences = MockSharedPreferences();
//       dataSource =
//           TodoLocalDataSourceImpl(sharedPreferences: mockSharedPreferences);
//     });

//     test('should save data to shared preferences', () async {
//       // Arrange

//       // when(mockSharedPreferences.setString(
//       //         CACHED_TODO, todomodelTask.toString()))
//       //     .thenReturn(Future.value(true)); // Mock the setString method

//       // Act
//       final result = await dataSource.cachTasks(
//           todoModel.fromJson(json.decode(fixture('correctTask.json'))));

//       // Assert
//       // verify(mockSharedPreferences.setString(
//       //     'CACHED_TODO', todomodelTask.toString()));

//       expect(result, true);
//     });
//   });
// }
