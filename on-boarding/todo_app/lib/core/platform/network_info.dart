import 'package:equatable/equatable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfo extends Equatable {
  NetworkInfo();
  Future<bool>? get isConnected; // to test offline change to false
}

class NetworkInfoImpl implements NetworkInfo {
  final InternetConnectionChecker connectionChecker;

  NetworkInfoImpl(this.connectionChecker);

  @override
  Future<bool>? get isConnected => connectionChecker.hasConnection;

  @override
  // Override props to include the connectionChecker property.
  List<Object?> get props => [connectionChecker];

  @override
  // TODO: implement stringify
  bool? get stringify => throw UnimplementedError();

  // @override
  // // Implemented stringify to return a string representation of the NetworkInfo object.
  // bool? get stringify => connectionChecker.toString();
}
