import 'package:flutter/material.dart';
import 'package:kopdar_app/modules/chat/data/room.dart';

class RoomItem extends StatelessWidget {
  final RoomData room;
  final Function(String roomName) onClickRoom;
  final Function(String roomName) onSwipeLeft;

  const RoomItem({Key key, this.room, this.onClickRoom, this.onSwipeLeft})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
        key: key,
        background: Container(
          color: Theme.of(context).errorColor,
          child: Icon(
            Icons.delete,
            color: Colors.white,
            size: 40,
          ),
          alignment: Alignment.centerRight,
          padding: EdgeInsets.only(right: 20),
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
        ),
        onDismissed: (_) => onClickRoom(room.roomName),
        direction: DismissDirection.endToStart,
        child: Card(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
          child: Padding(
            padding: EdgeInsets.all(8),
            child: ListTile(
              onTap: () => onClickRoom(room.roomName),
              leading: CircleAvatar(
                child: Image.memory(room.photoUrl),
              ),
              title: Text(room.roomName),
              subtitle: Text(room.lastMessage),
              trailing: Text(
                room.lastMessageTime,
              ),
            ),
          ),
        ));
  }
}
