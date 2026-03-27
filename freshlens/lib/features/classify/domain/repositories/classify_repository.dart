import 'package:fpdart/fpdart.dart';
import '../../../../core/error/failures.dart';
import '../entities/freshness_result.dart';

abstract class ClassifyRepository {
  Future<Either<Failure, FreshnessResult>> classifyImage(String imagePath);
}
