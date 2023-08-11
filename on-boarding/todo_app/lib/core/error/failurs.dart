import 'package:equatable/equatable.dart';

abstract class failure extends Equatable {
  final List properties;
  failure([this.properties = const <dynamic>[]]);

  @override
  List<Object?> get props => [properties];
}
