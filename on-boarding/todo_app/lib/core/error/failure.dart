import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  // ignore: prefer_const_constructors_in_immutables
  const Failure(String message);

  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

// class ServerFailure extends Failure {
//   @override
//   // TODO: implement props
//   List<Object?> get props => throw UnimplementedError();
// }

class ServerFailure extends Failure {
  const ServerFailure(String message) : super(message);
}

class CacheFailure extends Failure {
  const CacheFailure(String message) : super(message);
}
