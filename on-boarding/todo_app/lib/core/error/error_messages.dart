import 'package:todo_app/core/error/failure.dart';

class MapFailureToMessage {
  final Failure failure;
  MapFailureToMessage(this.failure);

  late String SERVER_FAILURE_MESSAGE = 'Server Failure';
  late String CACHE_FAILURE_MESSAGE = 'Cache Failure';
  late String INVALID_INPUT_FAILURE_MESSAGE =
      'Invalid Input - The number must be a positive integer or zero.';

  // ...

  String mapFailureToMessage() {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case CacheFailure:
        return CACHE_FAILURE_MESSAGE;
      default:
        return 'Unexpected Error';
    }
  }
}
