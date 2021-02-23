import 'package:flutter/material.dart';
import 'package:kopdar_app/modules/chat/data/chat.dart';
import 'package:kopdar_app/modules/chat/pages/chat-screen/widget/text_chat.dart';

class ChatContainer extends StatelessWidget {
  final bool fromCurrentUser;
  final ChatData chatData;

  const ChatContainer({Key key, this.fromCurrentUser, this.chatData})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextChat(
            content: chatData.content, isLastMessageRight: !fromCurrentUser)
      ],
      mainAxisAlignment:
          fromCurrentUser ? MainAxisAlignment.end : MainAxisAlignment.start,
    );
  }
}
