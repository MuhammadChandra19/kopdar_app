import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopdar_app/modules/room/pages/rooms/bloc/state.dart';
import 'package:kopdar_app/modules/room/pages/rooms/pages/initiator.dart';
import 'package:kopdar_app/modules/room/pages/rooms/pages/view.dart';
import 'package:kopdar_app/modules/room/room_module.dart';
import 'package:kopdar_app/utils/helper/helper.dart';

class RoomPage extends StatefulWidget {
  static const PATH = RoomModule.PATH + BRANCH_PATH;
  static const ROUTE_NAME = "RoomList";
  static const BRANCH_PATH = "";

  @override
  _RoomPageState createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  RoomInitiator _i;
  @override
  void initState() {
    _i = RoomInitiator();
    _i.init();
    super.initState();
  }

  @override
  void dispose() {
    _i.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: _i.getBloc,
      listener: (context, RoomState state) {
        if (state is RoomError) Helper.showToast(msg: state.errorMessage);
      },
      child: BlocBuilder(
        bloc: _i.getBloc,
        builder: (context, RoomState state) {
          return RoomView(
            goToRoom: (roomName) => print(roomName),
            roomList: (state is RoomRunning) ? state.roomList : [],
          );
        },
      ),
    );
  }
}
