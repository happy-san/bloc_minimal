part of 'sample_bloc.dart';

@immutable
abstract class SampleState extends Equatable {
  final List<Object?> properties;

  SampleState(this.properties);

  @override
  List<Object?> get props => properties;
}

class SampleInitial extends SampleState {
  SampleInitial() : super([]);
}

class SuccessState extends SampleState {
  SuccessState() : super([]);
}
