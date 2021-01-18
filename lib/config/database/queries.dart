import 'package:kopdar_app/config/database/migration_listener.dart';

class DBQueries {
  static Map<DBType, Map<int, List<String>>> queriesCreate = {
    DBType.DEFAULT: {
      0: [],
      1: [
        '''CREATE TABLE IF NOT EXISTS user ( id INTEGER PRIMARY KEY AUTOINCREMENT, username TEXT, photo_url TEXT)''',
        '''CREATE TABLE IF NOT EXISTS room ( id INTEGER PRIMARY KEY AUTOINCREMENT, room_name TEXT, last_message TEXT, last_message_time)''',
        '''CREATE TABLE IF NOT EXISTS user_room ( id INTEGER PRIMARY KEY AUTOINCREMENT, room_id TEXT, user_id TEXT)''',
        '''CREATE TABLE IF NOT EXISTS chat ( id INTEGER PRIMARY KEY AUTOINCREMENT, user_id TEXT, content TEXT, content_type TEXT, send_at TEXT, status TEXT)'''
      ]
    }
  };

  static List<String> getQueriesCreate(
      DBType dbType, int oldVersion, int currversion) {
    List<String> queries = <String>[];
    var queriesCreateByType = DBQueries.queriesCreate[dbType];
    var keys = queriesCreateByType.keys.toList();

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
