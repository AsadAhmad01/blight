import 'package:injectable/injectable.dart';
import '../datasources/app_database.dart';

@lazySingleton
class HistoryRepository {
  final AppDatabase _db;
  HistoryRepository(this._db);

  Stream<List<ScanRecord>> watchHistory() => _db.watchAllScans();

  Future<void> addRecord({
    required String imagePath,
    required String verdict,
    required double freshScore,
    required double okayScore,
    required double avoidScore,
    required String foodCategory,
    required DateTime createdAt,
  }) async {
    await _db.insertScan(ScanRecordsCompanion.insert(
      imagePath: imagePath,
      verdict: verdict,
      freshScore: freshScore,
      okayScore: okayScore,
      avoidScore: avoidScore,
      foodCategory: foodCategory,
      createdAt: createdAt,
    ));
  }

  Future<void> deleteRecord(int id) => _db.deleteScan(id);
}
