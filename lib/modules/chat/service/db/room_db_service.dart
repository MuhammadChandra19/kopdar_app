import 'package:kopdar_app/modules/chat/data/room.dart';
import 'package:sqflite/sqlite_api.dart';

class RoomDatabaseService {
  final Database database;

  RoomDatabaseService({this.database});

  Future<void> createRoom(RoomData roomData) async {
    await database.insert('room', {...roomData.toMap()});
  }

  Future<int> updateRoomPhoto(String roomName, String newPhotoUrl) async {
    return database.rawUpdate(
        'UPDATE room SET photo_url = ? WHERE room_name = ?',
        [newPhotoUrl, roomName]);
  }

  Future<List<RoomData>> getRoomList() async {
    var result = await database.query('room');
    List<RoomData> roomList = [];
    result.forEach((r) => roomList.add(RoomData.fromMap(r)));
    return roomList;
  }
}
