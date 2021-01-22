import 'package:flutter/material.dart';
import 'package:kopdar_app/modules/room/data/room.dart';
import 'package:kopdar_app/modules/room/pages/rooms/widgets/room_item.dart';
import 'package:kopdar_app/utils/helper/validator.dart';

class RoomView extends StatelessWidget {
  final List<RoomData> roomList;
  final Function(String) goToRoom;

  const RoomView({this.roomList, this.goToRoom});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Validator.isListNullOrEmpty(roomList)
            ? Container(
                child: Center(
                  child: Text('Start Chat With someone'),
                ),
              )
            : Expanded(
                child: ListView.builder(
                  itemCount: roomList.length,
                  itemBuilder: (ctx, i) => RoomItem(
                    key: new Key(roomList[i].roomName),
                    room: roomList[i],
                    onClickRoom: goToRoom,
                    onSwipeLeft: (name) => print(name),
                  ),
                ),
              )
      ],
    );
  }
}
