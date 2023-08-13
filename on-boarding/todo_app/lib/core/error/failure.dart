import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  // ignore: prefer_const_constructors_in_immutables
  Failure([List properties = const <dynamic>[]]) : super();
}

class ServerFailure extends Failure {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class CacheFailure extends Failure {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
