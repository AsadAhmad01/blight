import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';

import 'package:freshlens/core/error/failures.dart';
import 'package:freshlens/features/classify/domain/entities/freshness_result.dart';
import 'package:freshlens/features/classify/domain/usecases/classify_food_usecase.dart';
import 'package:freshlens/features/classify/presentation/bloc/classify_bloc.dart';

// ──────────────────────────────────────────────
// Mocks
// ──────────────────────────────────────────────
class MockClassifyFoodUseCase extends Mock implements ClassifyFoodUseCase {}

// ──────────────────────────────────────────────
// Helpers
// ──────────────────────────────────────────────
const _testPath = '/fake/apple.jpg';

FreshnessResult _freshResult() => FreshnessResult(
      verdict: FreshnessVerdict.fresh,
      freshScore: 0.91,
      okayScore: 0.06,
      avoidScore: 0.03,
      foodCategory: 'Fresh Apple',
      imagePath: _testPath,
      classifiedAt: DateTime(2026, 3, 28),
    );

void main() {
  late MockClassifyFoodUseCase mockUseCase;

  setUp(() {
    mockUseCase = MockClassifyFoodUseCase();
  });

  group('ClassifyBloc', () {
    test('initial state is ClassifyIdle', () {
      final bloc = ClassifyBloc(mockUseCase);
      expect(bloc.state, isA<ClassifyIdle>());
    });

    blocTest<ClassifyBloc, ClassifyState>(
      'emits ClassifyImageLoaded on ImageSelected event',
      build: () => ClassifyBloc(mockUseCase),
      act: (bloc) => bloc.add(ClassifyEvent.imageSelected(_testPath)),
      expect: () => [
        isA<ClassifyImageLoaded>().having(
          (s) => (s as ClassifyImageLoaded).imagePath,
          'imagePath',
          equals(_testPath),
        ),
      ],
    );

    blocTest<ClassifyBloc, ClassifyState>(
      'emits Loading then Success on ClassifyRequested (use-case returns Right)',
      build: () {
        when(() => mockUseCase.call(any()))
            .thenAnswer((_) async => Right(_freshResult()));
        return ClassifyBloc(mockUseCase);
      },
      act: (bloc) => bloc.add(ClassifyEvent.classifyRequested(_testPath)),
      expect: () => [
        isA<ClassifyLoading>(),
        isA<ClassifySuccess>().having(
          (s) => (s as ClassifySuccess).result.verdict,
          'verdict',
          equals(FreshnessVerdict.fresh),
        ),
      ],
    );

    blocTest<ClassifyBloc, ClassifyState>(
      'emits Loading then Failure on ClassifyRequested (use-case returns Left)',
      build: () {
        when(() => mockUseCase.call(any()))
            .thenAnswer((_) async => const Left(MLInferenceFailure('Model crashed')));
        return ClassifyBloc(mockUseCase);
      },
      act: (bloc) => bloc.add(ClassifyEvent.classifyRequested(_testPath)),
      expect: () => [
        isA<ClassifyLoading>(),
        isA<ClassifyFailure>().having(
          (s) => (s as ClassifyFailure).message,
          'message',
          equals('Model crashed'),
        ),
      ],
    );

    blocTest<ClassifyBloc, ClassifyState>(
      'emits ClassifyIdle on Reset event',
      build: () => ClassifyBloc(mockUseCase),
      seed: () => ClassifyState.imageLoaded(_testPath),
      act: (bloc) => bloc.add(const ClassifyEvent.reset()),
      expect: () => [isA<ClassifyIdle>()],
    );

    blocTest<ClassifyBloc, ClassifyState>(
      'emits ClassifyIdle on Reset even from Success state',
      build: () => ClassifyBloc(mockUseCase),
      seed: () => ClassifyState.success(_freshResult()),
      act: (bloc) => bloc.add(const ClassifyEvent.reset()),
      expect: () => [isA<ClassifyIdle>()],
    );
  });
}
