import 'package:kopdar_app/config/database/config.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

abstract class CoreDatabaseHelper {
  static final String TAG = "CoreDatabaseHelper";
  Database _database;
  String _databasePath;
  DatabaseConfig get databaseConfig;

  Future<Database> open() async {
    var path = _databasePath ?? await _getDBPath();
    if (_database == null) {
      _database = await openDatabase(path,
          version: databaseConfig.version,
          onCreate: databaseConfig.databaseMigrationListener.onCreate,
          onUpgrade: databaseConfig.databaseMigrationListener.onUpgrade);
    }
    return _database;
  }

  Future<void> deleteDB() async {
    var path = _databasePath ?? await _getDBPath();
    await deleteDatabase(path);
  }

  Future<void> close() async {
    if (_database != null) {
      await _database.close();
    }
  }

  Future<String> _getDBPath() async {
    if (_databasePath == null) {
      _databasePath = join(await getDatabasesPath(), databaseConfig.dbName);
    }
    return _databasePath;
  }

  Database get database => _database;
}
