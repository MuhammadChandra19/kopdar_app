import 'package:kopdar_app/core/core_initiator.dart';
import 'package:kopdar_app/modules/room/pages/rooms/bloc/bloc.dart';
import 'package:kopdar_app/modules/room/pages/rooms/bloc/event.dart';

class RoomInitiator extends CoreInitiator {
  RoomBloc _bloc;

  @override
  void dispose() {
    _bloc.close();
  }

  @override
  void init() {
    _bloc = RoomBloc();
    _bloc.add(LoadRoomList());
  }

  RoomBloc get getBloc => _bloc;
}
