import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'package:kopdar_app/modules/chat/pages/chat-screen/bloc/state.dart';
import 'package:kopdar_app/modules/chat/pages/chat-screen/data/chat-screen_arguments.dart';
import 'package:kopdar_app/modules/chat/pages/chat-screen/page/initiator.dart';
import 'package:kopdar_app/modules/chat/pages/chat-screen/page/view.dart';
import 'package:kopdar_app/modules/chat/pages/chat-screen/widget/chat_input.dart';
import 'package:kopdar_app/modules/chat/pages/chat_module.dart';

class ChatScreenPage extends StatefulWidget {
  static const PATH = ChatModule.PATH + BRANCH_PATH;
  static const ROUTE_NAME = 'ChatScreen';
  static const BRANCH_PATH = '/chat-screen';

  final ChatScreenArgument argument;

  const ChatScreenPage({Key key, this.argument}) : super(key: key);

  @override
  _ChatScreenPageState createState() => _ChatScreenPageState();
}

class _ChatScreenPageState extends State<ChatScreenPage> {
  ChatScreenInitiator _i;

  @override
  void initState() {
    // TODO: implement initState
    _i = ChatScreenInitiator(argument: widget.argument);
    _i.init();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _i.dispose();
    super.dispose();
  }

  bool isDefaultAvatar(String avatar) {
    return avatar == 'default';
  }

  Widget createBlocListener() {
    return BlocListener(
      bloc: _i.getBloc,
      listener: (context, ChatState state) {},
      child: BlocBuilder(
        bloc: _i.getBloc,
        builder: (context, ChatState state) {
          return Container();
        },
      ),
    );
  }

  Widget buildHeaderChat() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, // centers horizontally
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
            child: isDefaultAvatar(widget.argument.pair.photourl)
                ? Icon(Icons.person)
                : Image.network(widget.argument.pair.photourl)),
        SizedBox(
          width: 3,
        ),
        Text(widget.argument.pair.name)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: buildHeaderChat(),
      ),
      body: WillPopScope(
        child: Stack(
          children: [
            createBlocListener(),
            ChatInput(
              focusNode: _i.getFocusNode,
              textEditingController: _i.getTextController,
              onSendMessage: _i.sendChat,
            )
          ],
        ),
        onWillPop: () {},
      ),
    );
  }
}
