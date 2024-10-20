import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

abstract class Usecase<T, Params> {
  T call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
