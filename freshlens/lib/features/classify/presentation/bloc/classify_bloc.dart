import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/freshness_result.dart';
import '../../domain/usecases/classify_food_usecase.dart';

part 'classify_bloc.freezed.dart';

@freezed
sealed class ClassifyEvent with _$ClassifyEvent {
  const factory ClassifyEvent.imageSelected(String imagePath) = ImageSelected;
  const factory ClassifyEvent.classifyRequested(String imagePath) = ClassifyRequested;
  const factory ClassifyEvent.reset() = Reset;
}

@freezed
sealed class ClassifyState with _$ClassifyState {
  const factory ClassifyState.idle() = ClassifyIdle;
  const factory ClassifyState.imageLoaded(String imagePath) = ClassifyImageLoaded;
  const factory ClassifyState.loading() = ClassifyLoading;
  const factory ClassifyState.success(FreshnessResult result) = ClassifySuccess;
  const factory ClassifyState.failure(String message) = ClassifyFailure;
}

@injectable
class ClassifyBloc extends Bloc<ClassifyEvent, ClassifyState> {
  final ClassifyFoodUseCase _classifyUseCase;

  ClassifyBloc(this._classifyUseCase) : super(const ClassifyState.idle()) {
    on<ImageSelected>((event, emit) => emit(ClassifyState.imageLoaded(event.imagePath)));
    on<ClassifyRequested>(_onClassifyRequested);
    on<Reset>((_, emit) => emit(const ClassifyState.idle()));
  }

  Future<void> _onClassifyRequested(ClassifyRequested event, Emitter<ClassifyState> emit) async {
    emit(const ClassifyState.loading());
    final result = await _classifyUseCase(event.imagePath);
    result.fold(
      (failure) => emit(ClassifyState.failure(failure.message)),
      (data)    => emit(ClassifyState.success(data)),
    );
  }
}
