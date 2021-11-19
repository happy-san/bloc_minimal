import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../dependency.dart';

part 'sample_event.dart';
part 'sample_state.dart';

class SampleBloc extends Bloc<SampleEvent, SampleState> {
  Dependency dependency;

  SampleBloc(this.dependency) : super(SampleInitial()) {
    on<Event>((event, emit) {
      dependency.test();
    });
  }
}
