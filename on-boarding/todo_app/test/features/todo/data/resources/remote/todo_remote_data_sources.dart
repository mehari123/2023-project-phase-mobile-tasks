import 'package:http/http.dart' as http;
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/features/todo/data/models/todo_model.dart';
import '../../../../../../lib/features/todo/data/resources/remote/toto_remote_data_sources_impl.dart';
import '../../../../../fixtures/fixture_reader.dart';

class MockHttpClient extends Mock implements http.Client {}

void main() async {
  late TodoRemoteDataSourceImpl dataSource;
  late MockHttpClient mockHttpClient;

  setUp(() {
    mockHttpClient = MockHttpClient();
    dataSource = TodoRemoteDataSourceImpl(client: mockHttpClient);
    final taskModel = todoModel(
        id: "1",
        title: "Test Title",
        description: "Test Description",
        dueDate: DateTime.now(),
        isDone: false);
  });

  group('test 33', () {
    test(
      'should preform a GET request on a URL with number being the endpoint and with application/json header',
      () {
        //arrange

        String apiUrl =
            'https://api-nodejs-todolist.herokuapp.com/task?completed=true'; // Use the correct URL here
        Uri uri = Uri.parse(apiUrl);

        when(mockHttpClient.get(uri, headers: anyNamed('headers'))).thenAnswer(
          (_) async => http.Response(fixture('desc.json'), 200),
        );
        // act
        dataSource.viewAllTask();
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
  });
}
