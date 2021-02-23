import 'dart:convert';

class ChatData {
  final int id;
  final String roomName;
  final String sender;
  final String content;
  final String contentType;
  final String sendAt;
  final String status;

  ChatData(
      {this.id,
      this.sender,
      this.roomName,
      this.content,
      this.contentType,
      this.sendAt,
      this.status});

  Map<String, dynamic> toMap() {
    return {
      'room_name': roomName,
      'content': content,
      'is_from_current_user': sender,
      'content_type': contentType,
      'send_at': sendAt,
      'status': status,
    };
  }

  factory ChatData.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return ChatData(
      id: map['id'],
      roomName: map['room_name'],
      content: map['content'],
      contentType: map['content_type'],
      sender: map['sender'],
      sendAt: map['send_at'],
      status: map['status'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ChatData.fromJson(String source) =>
      ChatData.fromMap(json.decode(source));
}
