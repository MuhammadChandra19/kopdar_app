import 'package:flutter/material.dart';

import 'package:kopdar_app/modules/chat/data/chat.dart';
import 'package:kopdar_app/modules/chat/pages/chat-screen/widget/chat_container.dart';
import 'package:kopdar_app/utils/helper/validator.dart';

class ChatView extends StatelessWidget {
  final bool isLoading;
  final List<ChatData> chatList;
  final String currentUser;
  final ScrollController listController;

  const ChatView({
    Key key,
    this.isLoading,
    this.chatList,
    this.currentUser,
    this.listController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: isLoading
            ? Center(
                child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                        Theme.of(context).primaryColor)))
            : buildChatList());
  }

  Widget buildChatList() {
    return Validator.isListNullOrEmpty(chatList)
        ? Center(child: Text('Start chatting!'))
        : ListView.builder(
            padding: EdgeInsets.all(10.0),
            itemCount: chatList.length,
            reverse: true,
            itemBuilder: (ctx, idx) => ChatContainer(
              chatData: chatList[idx],
              key: new Key(chatList[idx].id.toString()),
              fromCurrentUser: chatList[idx].sender == currentUser,
            ),
          );
  }
}
