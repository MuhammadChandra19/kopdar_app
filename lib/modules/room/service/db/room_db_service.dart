import 'package:kopdar_app/modules/room/data/room.dart';
import 'package:sqflite/sqlite_api.dart';

class RoomDatabaseService {
  final Database database;

  RoomDatabaseService({this.database});

  Future<void> createRoom(RoomData roomData) async {
    await database.insert('room', {...roomData.toMap()});
  }

  Future<int> updateRoomPhoto(String roomName, List<int> newPhotoUrl) async {
    return database.rawUpdate(
        'UPDATE room SET photo_url = ? WHERE room_name = ?',
        [newPhotoUrl, roomName]);
  }

  Future<int> updateLastRoomActivity(
      String roomName, String message, String time) async {
    return database.rawUpdate(
        'UPDATE room SET last_message = ?, last_message_time = ? WHERE room_name = ?',
        [time, message, roomName]);
  }

  Future<int> deleteRoom(String roomName) async {
    return database
        .delete('room', where: 'room_name = ?', whereArgs: [roomName]);
  }

  Future<List<RoomData>> getRoomList() async {
    var result = await database.query('room');
    List<RoomData> roomList = [];
    result.forEach((r) => roomList.add(RoomData.fromMap(r)));
    return roomList;
  }
}
