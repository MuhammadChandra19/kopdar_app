import 'package:kopdar_app/config/database/helper/initial.dart';
import 'package:kopdar_app/core/core_service_bloc.dart';
import 'package:kopdar_app/modules/room/data/room.dart';
import 'package:kopdar_app/modules/room/pages/rooms/bloc/event.dart';
import 'package:kopdar_app/modules/room/pages/rooms/bloc/state.dart';
import 'package:kopdar_app/modules/room/service/db/room_db_service.dart';

class RoomBloc extends CoreServiceBloc<RoomEvent, RoomState> {
  RoomBloc() : super(RoomInitial());
  RoomDatabaseService _dbService =
      RoomDatabaseService(database: InitialDatabaseHelper().database);
  @override
  Stream<RoomState> mapEventToState(RoomEvent event) async* {
    if (event is LoadRoomList) {
      List<RoomData> roomList = await _dbService.getRoomList();
      yield RoomRunning(roomList: roomList);
    } else if (event is SetRoom) {
      yield* _mapNewRoomRostate(event.room);
    }
  }

  Stream<RoomState> _mapNewRoomRostate(RoomData room) async* {
    RoomRunning _state = (state is! RoomRunning)
        ? RoomRunning.initial()
        : (state as RoomRunning);

    yield RoomRunning(roomList: [..._state.roomList, room]);
  }
}
