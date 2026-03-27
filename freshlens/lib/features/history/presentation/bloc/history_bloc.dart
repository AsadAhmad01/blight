import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../data/datasources/app_database.dart';
import '../../data/repositories/history_repository.dart';

part 'history_bloc.freezed.dart';

@freezed
sealed class HistoryEvent with _$HistoryEvent {
  const factory HistoryEvent.started() = Started;
  const factory HistoryEvent.scansUpdated(List<ScanRecord> scans) = ScansUpdated;
  const factory HistoryEvent.deleteScan(int id) = DeleteScan;
  const factory HistoryEvent.addScan({
    required String imagePath,
    required String verdict,
    required double freshScore,
    required double okayScore,
    required double avoidScore,
    required String foodCategory,
    required DateTime createdAt,
  }) = AddScan;
}

@freezed
sealed class HistoryState with _$HistoryState {
  const factory HistoryState.loading() = HistoryLoading;
  const factory HistoryState.loaded(List<ScanRecord> scans) = HistoryLoaded;
  const factory HistoryState.error(String message) = HistoryError;
}

@injectable
class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  final HistoryRepository _repository;
  StreamSubscription<List<ScanRecord>>? _scansSubscription;

  HistoryBloc(this._repository) : super(const HistoryState.loading()) {
    on<Started>(_onStarted);
    on<ScansUpdated>((event, emit) => emit(HistoryState.loaded(event.scans)));
    on<DeleteScan>((event, emit) async => await _repository.deleteRecord(event.id));
    on<AddScan>((event, emit) async {
      await _repository.addRecord(
        imagePath: event.imagePath,
        verdict: event.verdict,
        freshScore: event.freshScore,
        okayScore: event.okayScore,
        avoidScore: event.avoidScore,
        foodCategory: event.foodCategory,
        createdAt: event.createdAt,
      );
    });
  }

  void _onStarted(Started event, Emitter<HistoryState> emit) {
    emit(const HistoryState.loading());
    _scansSubscription?.cancel();
    _scansSubscription = _repository.watchHistory().listen(
      (scans) {
        add(HistoryEvent.scansUpdated(scans));
      },
      onError: (error) {
        emit(HistoryState.error(error.toString()));
      },
    );
  }

  @override
  Future<void> close() {
    _scansSubscription?.cancel();
    return super.close();
  }
}
