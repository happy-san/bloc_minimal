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
  late SampleBloc bloc;
  late MockDependency mockDependency;

  setUp(() {
    mockDependency = MockDependency();
    bloc = SampleBloc(mockDependency);
  });

  test(
    'should run successfully',
    () async {
      // arrange
      when(mockDependency.test()).thenAnswer((realInvocation) {});

      // act
      bloc.add(Event('test'));

      /// - used to make the test pass because verify later will be called soon
      /// - tip: this test serves no purpose
      await Future.delayed(Duration(seconds: 1));
      // assert
      verify(mockDependency.test());
    },
  );
}
