import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:kopdar_app/core/api/v1/chat/chat.pb.dart';
import 'package:kopdar_app/core/core_initiator.dart';
import 'package:kopdar_app/modules/app/bloc/bloc.dart';
import 'package:kopdar_app/modules/app/bloc/state.dart';
import 'package:kopdar_app/modules/chat/pages/chat-screen/bloc/bloc.dart';
import 'package:kopdar_app/modules/chat/pages/chat-screen/bloc/event.dart';
import 'package:kopdar_app/modules/chat/pages/chat-screen/data/chat-screen_arguments.dart';

class ChatScreenInitiator extends CoreInitiator {
  final ChatScreenArgument argument;

  ChatBloc _bloc;
  FocusNode _focusNode;
  TextEditingController _textEditingController;

  ChatScreenInitiator({@required this.argument});

  static String currentUser() {
    var session = Modular.get<SessionBloc>();
    var state = session.state;
    if (state != null && state is SessionRunning) {
      return state.shortProfile.email;
    }

    return null;
  }

  @override
  void dispose() {
    _bloc.close();
  }

  @override
  void init() {
    _bloc = ChatBloc();
    _focusNode = FocusNode();
    _textEditingController = TextEditingController();
    initApp();
  }

  ChatBloc get getBloc => _bloc;
  FocusNode get getFocusNode => _focusNode;
  TextEditingController get getTextController => _textEditingController;

  void initApp() async {
    StreamConnect connect = StreamConnect(
        active: true,
        name: this.argument.pair.username,
        roomKey: this.argument.pair.email);
    _bloc.add(LoadChat(streamConnect: connect));
  }

  void sendChat(String text) async {
    ContentMessage msg = ContentMessage(
        content: text,
        email: argument.pair.email,
        type: 'chat',
        roomKey: argument.pair.email,
        sender: currentUser());
    _bloc.add(SendChat(contentMessage: msg));
  }
}
