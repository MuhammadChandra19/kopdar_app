import 'package:kopdar_app/config/database/config.dart';
import 'package:kopdar_app/config/database/migration_listener.dart';
import 'package:kopdar_app/core/core_database_helper.dart';
import 'package:sqflite/sqlite_api.dart';

class InitialDatabaseHelper extends CoreDatabaseHelper {
  InitialDatabaseHelper._();
  static final InitialDatabaseHelper instance = InitialDatabaseHelper._();
  factory InitialDatabaseHelper() => instance;

  @override
  // TODO: implement databaseConfig
  DatabaseConfig get databaseConfig =>
      DatabaseConfig(1, "kopdar.db", DBMigrationListener());

  Future<void> remove(List<String> arguments) async {
    Database db = await database;
    try {
      arguments.forEach((argument) async {
        await db.rawDelete(argument);
      });
    } catch (e) {
      print(e.toString());
      // Lo.warning(e.toString());
    }
  }
}
