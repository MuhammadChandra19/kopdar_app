import 'dart:convert';

import 'dart:typed_data';

class RoomData {
  final String roomName;
  final Uint8List photoUrl;
  final String lastMessage;
  final String lastMessageTime;

  RoomData(
      {this.roomName, this.photoUrl, this.lastMessage, this.lastMessageTime});

  Map<String, dynamic> toMap() {
    return {
      'room_name': roomName,
      'photo_url': photoUrl,
      'last_message': lastMessage,
      'last_message_time': lastMessageTime,
    };
  }

  factory RoomData.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return RoomData(
      roomName: map['room_name'],
      photoUrl: map['photo_url'],
      lastMessage: map['last_message'],
      lastMessageTime: map['last_message_time'],
    );
  }

  String toJson() => json.encode(toMap());

  factory RoomData.fromJson(String source) =>
      RoomData.fromMap(json.decode(source));
}
