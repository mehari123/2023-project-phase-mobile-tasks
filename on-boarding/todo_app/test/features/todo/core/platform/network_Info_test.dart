import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:todo_app/core/platform/network_info.dart';

// class InternetConnectionChecker extends Mock implements internetConnectionChecker {}

void main() {
  NetworkInfoImpl? networkInfo;
  late InternetConnectionChecker internetConnectionChecker;
  // internetConnectionChecker = InternetConnectionChecker();
  // networkInfo = NetworkInfoImpl(internetConnectionChecker);

  setUp(() {
    internetConnectionChecker = InternetConnectionChecker();
    networkInfo = NetworkInfoImpl(internetConnectionChecker);
  });

  group('isConnected', () {
    test('should forward the call to internetConnectionChecker.hasConnection',
        () async {
      // arrange
      final tHasConnectionFuture = Future.value(true);

      when(internetConnectionChecker.hasConnection)
          .thenAnswer((_) => tHasConnectionFuture);
      // act
      final result = networkInfo?.isConnected;

      // assert
      expect(result, true);
    });
  });
}
