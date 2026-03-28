import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:injectable/injectable.dart';

part 'app_database.g.dart';

@DataClassName('ScanRecord')
class ScanRecords extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get imagePath => text()();
  TextColumn get verdict => text()();
  RealColumn get freshScore => real()();
  RealColumn get okayScore => real()();
  RealColumn get avoidScore => real()();
  TextColumn get foodCategory => text()();
  DateTimeColumn get createdAt => dateTime()();
}

@singleton
@DriftDatabase(tables: [ScanRecords])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Stream<List<ScanRecord>> watchAllScans() =>
      (select(scanRecords)..orderBy([(t) => OrderingTerm.desc(t.createdAt)])).watch();

  Stream<List<ScanRecord>> watchScansByVerdict(String verdict) =>
      (select(scanRecords)..where((t) => t.verdict.equals(verdict))).watch();

  Future<int> insertScan(ScanRecordsCompanion entry) =>
      into(scanRecords).insert(entry);

  Future<int> deleteScan(int id) =>
      (delete(scanRecords)..where((t) => t.id.equals(id))).go();
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'blight.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
