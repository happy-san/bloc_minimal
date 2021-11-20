import 'package:bloc_minimal/bloc/sample_bloc.dart';
import 'package:bloc_minimal/dependency.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'sample_bloc_test.mocks.dart';

/// - use custom mocks becuase it has some useful properties that u might need
/// - ran with `flutter pub run build_runner build --delete-conflicting-outputs`
@GenerateMocks([], customMocks: [
  MockSpec<Dependency>(
    returnNullOnMissingStub: true,
  )
])
void main() {
  test(
    'should run successfully',
    () async {
      // arrange
      final mockDependency = MockDependency();
      final bloc = SampleBloc(mockDependency);
      // act
      bloc.add(Event('test'));
      // assert
      verify(mockDependency.test());
    },
  );
}
