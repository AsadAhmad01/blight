import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../entities/freshness_result.dart';
import '../repositories/classify_repository.dart';

@injectable
class ClassifyFoodUseCase {
  final ClassifyRepository _repository;
  const ClassifyFoodUseCase(this._repository);

  Future<Either<Failure, FreshnessResult>> call(String imagePath) =>
      _repository.classifyImage(imagePath);
}
