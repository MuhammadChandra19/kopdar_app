import 'package:equatable/equatable.dart';
import 'package:kopdar_app/modules/room/data/room.dart';

abstract class RoomEvent extends Equatable {
  RoomEvent([mProps = const []]) : this._mProps = mProps;
  final List _mProps;

  @override
  List<Object> get props => this._mProps;
}

class SetRoom extends RoomEvent {
  final RoomData room;
  SetRoom({this.room}) : super([room]);
}

class UpdateRoomImage extends RoomEvent {
  final String roomName;
  final List<int> photoUrl;

  UpdateRoomImage({this.roomName, this.photoUrl}) : super([roomName, photoUrl]);
}

class DeleteRoom extends RoomEvent {
  final String roomName;

  DeleteRoom({this.roomName}) : super([roomName]);
}

class LoadRoomList extends RoomEvent {}
