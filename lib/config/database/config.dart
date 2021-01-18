import 'package:kopdar_app/config/database/migration_listener.dart';

class DatabaseConfig {
  int version;
  String dbName;
  DatabaseMigrationListener databaseMigrationListener;

  DatabaseConfig(this.version, this.dbName, this.databaseMigrationListener);
}
