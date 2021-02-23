import 'package:kopdar_app/modules/user/data/user.dart';
import 'package:kopdar_app/utils/helper/validator.dart';
import 'package:sqflite/sqlite_api.dart';

class UserDatabaseService {
  final Database database;

  UserDatabaseService({this.database});

  Future<void> saveUser(UserData user) async {
    var result = await database
        .query('user', where: 'user_id = ?', whereArgs: [user.userId]);
    if (Validator.isListNullOrEmpty(result)) {
      await database.insert('user', {...user.toMap()});
    }
  }

  Future<List<UserData>> getUserList() async {
    var result = await database.query('user');
    List<UserData> userList = [];
    result.forEach((user) => userList.add(UserData.fromMap(user)));
    return userList;
  }
}
