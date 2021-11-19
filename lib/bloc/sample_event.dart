part of 'sample_bloc.dart';

@immutable
abstract class SampleEvent {}

class Event extends SampleEvent {
  final String field;

  Event(this.field);
}
