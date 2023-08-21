import 'package:http/http.dart' as http;
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:todo_app/core/error/exception.dart';
import 'package:todo_app/features/todo/data/models/todo_model.dart';
import 'package:todo_app/features/todo/data/resources/todo_remote_data_sources_impl.dart';
import '../../../../../fixtures/fixture_reader.dart';

class MockHttpClient extends Mock implements http.Client {}

void main() {
  group('TodoRemoteDataSourceImpl tests', () {
    late TodoRemoteDataSourceImpl dataSource;
    late MockHttpClient mockHttpClient;
    final taskModel = todoModel(
        id: "1",
        title: "Test Title",
        description: "Test Description",
        dueDate: DateTime.now(),
        isDone: false);

    setUp(() {
      mockHttpClient = MockHttpClient();
      dataSource = TodoRemoteDataSourceImpl(client: mockHttpClient);
    });

    test(
      'should perform a GET request on a URL with number being the endpoint and with application/json header',
      () async {
        //arrange
        String apiUrl =
            'https://api-nodejs-todolist.herokuapp.com/task?completed=true'; // Use the correct URL here
        Uri uri = Uri.parse(apiUrl);

        when(mockHttpClient.get(uri, headers: anyNamed('headers'))).thenAnswer(
          (_) async => http.Response(fixture('desc.json'), 200),
        );
        // act
        await dataSource.viewAllTask();
        // assert

        verify(mockHttpClient.get(
          uri,
          headers: {
            'Authorization': 'Bearer your_token_here',
            'Content-Type': 'application/json'
          },
        ));
      },
    );

    test(
      'should return TodoModel when the response code is 200 (success)',
      () async {
        String apiUrl =
            'https://api-nodejs-todolist.herokuapp.com/task?completed=true'; // Use the correct URL here
        Uri uri = Uri.parse(apiUrl);
        // arrange
        when(mockHttpClient.get(uri, headers: anyNamed('headers'))).thenAnswer(
          (_) async => http.Response(fixture('desc.json'), 200),
        );
        // act
        final result = await dataSource.viewAllTask();
        // assert
        expect(result, equals(taskModel));
      },
    );

    test(
      'should throw a ServerException when the response code is 404 or other',
      () async {
        String apiUrl =
            'https://api-nodejs-todolist.herokuapp.com/task?completed=true'; // Use the correct URL here
        Uri uri = Uri.parse(apiUrl);

        when(mockHttpClient.get(uri, headers: anyNamed('headers'))).thenAnswer(
          (_) async => http.Response('Something went wrong', 404),
        );
        // act
        final call = dataSource.viewAllTask();
        // assert
        expect(() => call, throwsA(TypeMatcher<ServerException>()));
      },
    );
  });
}
