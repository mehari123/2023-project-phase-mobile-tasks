import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
// Import the shared_preferences package
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_app/features/todo/data/resources/local/todolocal_data_source_impl.dart';
import 'package:todo_app/features/todo/data/models/todo_model.dart';

import '../../../../../fixtures/fixture_reader.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}
// import 'todo_local_data_sources.mocks.dart';

// @GenerateMocks([
//   MockSharedPreferences
// ]) // GenerateMocks using your MockSharedPreferences class
// // Import the shared_preferences package

void main() {
  TodoLocalDataSourceImpl dataSource;
  MockSharedPreferences mockSharedPreferences;
  mockSharedPreferences = MockSharedPreferences();
  dataSource =
      TodoLocalDataSourceImpl(sharedPreferences: mockSharedPreferences);

  setUp(() {
    // mockSharedPreferences = MockSharedPreferences();
    // dataSource =TodoLocalDataSourceImpl(sharedPreferences: mockSharedPreferences);
  });

  group('get cached todoModel', () {
    final todomodelTask =
        todoModel.fromJson(json.decode(fixture('trivia_cached.json')));

    test(
      'should return NumberTrivia from SharedPreferences when there is one in the cache',
      () async {
        // arrange
        when(mockSharedPreferences.getString("any"))
            .thenReturn(fixture('cached_model.json'));
        // act
        final result = await dataSource.viewAllTask();
        // assert
        verify(mockSharedPreferences.getString('CACHED_NUMBER_TRIVIA'));
        expect(result, equals(todomodelTask));
      },
    );
  });
}
