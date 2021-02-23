import 'package:flutter/material.dart';

class ChatInput extends StatelessWidget {
  final Function onSendMessage;
  final TextEditingController textEditingController;
  final FocusNode focusNode;

  const ChatInput(
      {Key key, this.onSendMessage, this.textEditingController, this.focusNode})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Flexible(
            child: Container(
              child: TextField(
                style: TextStyle(fontSize: 15.0),
                controller: textEditingController,
                decoration: InputDecoration.collapsed(
                  hintText: 'Type your message...',
                  hintStyle: TextStyle(color: Colors.grey.shade200),
                ),
                focusNode: focusNode,
              ),
            ),
          ),
          Material(
            child: new Container(
              margin: new EdgeInsets.symmetric(horizontal: 8.0),
              child: new IconButton(
                icon: new Icon(Icons.send),
                onPressed: () => onSendMessage(textEditingController.text, 0),
                color: Colors.blue[300],
              ),
            ),
            color: Colors.white,
          ),
        ],
      ),
      width: double.infinity,
      height: 50.0,
      decoration: new BoxDecoration(
          border: new Border(
              top: new BorderSide(color: Colors.grey.shade200, width: 0.5)),
          color: Colors.white),
    );
  }
}
