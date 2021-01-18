import 'package:kopdar_app/config/database/queries.dart';
import 'package:sqflite/sqflite.dart';

enum DBType { DEFAULT }

abstract class DatabaseMigrationListener {
  void onCreate(Database db, int version);
  void onUpgrade(Database db, int olefdVersion, int newVersion);
}

class DBMigrationListener extends DatabaseMigrationListener {
  final DBType type;
  DBMigrationListener({this.type = DBType.DEFAULT});

  @override
  void onCreate(Database db, int version) async {
    await _createDatabase(db: db, version: version, type: type);
  }

  @override
  void onUpgrade(Database db, int oldVersion, int newVersion) async {
    await _createDatabase(
        db: db, oldVersion: oldVersion, version: newVersion, type: type);
  }

  Future<void> _createDatabase({
    Database db,
    int oldVersion = 0,
    int version,
    DBType type,
  }) async {
    Batch batch = db.batch();
    DBQueries.getQueriesCreate(
      type,
      oldVersion,
      version,
    ).forEach((query) {
      batch.execute(query);
    });
    await batch.commit(noResult: false);
  }
}
