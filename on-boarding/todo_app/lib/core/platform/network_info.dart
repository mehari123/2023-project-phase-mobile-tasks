import 'package:equatable/equatable.dart';

abstract class NetworkInfo extends Equatable {
  NetworkInfo();
  Future<bool>? get isConnected; // to test offline change to false
}
