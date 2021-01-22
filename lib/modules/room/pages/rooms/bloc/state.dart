import 'package:equatable/equatable.dart';
import 'package:kopdar_app/modules/room/data/room.dart';

class RoomState extends Equatable {
  RoomState([mProps = const []]) : this._mProps = mProps;
  final List _mProps;

  @override
  List<Object> get props => this._mProps;
}

class RoomInitial extends RoomState {}

class RoomRunning extends RoomState {
  final List<RoomData> roomList;
  RoomRunning({this.roomList}) : super([roomList]);

  static RoomRunning initial() {
    return RoomRunning(roomList: []);
  }

  RoomRunning copyWith({List<RoomData> roomList}) {
    return RoomRunning(roomList: roomList ?? this.roomList);
  }
}

class RoomError extends RoomState {
  final String errorMessage;
  RoomError({this.errorMessage}) : super([errorMessage]);
}
