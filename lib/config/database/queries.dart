import 'package:kopdar_app/config/database/migration_listener.dart';

class DBQueries {
  static Map<DBType, Map<int, List<String>>> queriesCreate = {
    DBType.DEFAULT: {
      0: [],
      1: [
        '''CREATE TABLE IF NOT EXISTS user ( user_id TEXT PRIMARY KEY, username TEXT, photo_url BLOB)''',
        '''CREATE TABLE IF NOT EXISTS points ( user_id TEXT PRIMARY KEY, lat REAL, lon REAL )''',
        '''CREATE TABLE IF NOT EXISTS room ( room_name TEXT PRIMARY KEY, photo_url BLOB, last_message TEXT, last_message_time)''',
        '''CREATE TABLE IF NOT EXISTS chat ( id INTEGER PRIMARY KEY AUTOINCREMENT, room_name TEXT, content TEXT, content_type TEXT, send_at TEXT, status TEXT)'''
      ]
    }
  };

  static List<String> getQueriesCreate(
      DBType dbType, int oldVersion, int currversion) {
    List<String> queries = <String>[];
    var queriesCreateByType = DBQueries.queriesCreate[dbType];
    var keys = queriesCreateByType.keys.toList();
    print("run database");
    for (int i = oldVersion + 1; i <= currversion; i++) {
      /* if the key in the map exist then continue */
      if (queriesCreateByType.containsKey(keys[i]) &&
          queriesCreateByType[keys[i]].length > 0) {
        queries.addAll(queriesCreateByType[keys[i]]);
      }
    }
    return queries;
  }
}
