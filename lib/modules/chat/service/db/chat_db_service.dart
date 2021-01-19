import 'package:kopdar_app/modules/chat/data/chat.dart';
import 'package:sqflite/sqlite_api.dart';

class ChatDatabaseService {
  final Database database;

  ChatDatabaseService({this.database});

  Future<void> insertChat(ChatData chatData) async {
    await database.insert('chat', {...chatData.toMap()});
  }

  Future<List<ChatData>> getHistoryChat(String roomName) async {
    var result = await database
        .query('chat', where: 'user_id = ?', whereArgs: [roomName]);
    List<ChatData> chatList = [];
    result.forEach((r) => chatList.add(ChatData.fromMap(r)));
    return chatList;
  }
}
