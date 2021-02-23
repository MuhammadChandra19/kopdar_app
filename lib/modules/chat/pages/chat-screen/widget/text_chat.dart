import 'package:flutter/material.dart';

class TextChat extends StatelessWidget {
  final String content;
  final bool isLastMessageRight;

  const TextChat({Key key, this.content, this.isLastMessageRight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        content,
        style: TextStyle(
            color: !isLastMessageRight
                ? Theme.of(context).primaryColor
                : Colors.white),
      ),
      padding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
      width: 200.0,
      decoration: BoxDecoration(
          color: !isLastMessageRight
              ? Colors.grey.shade200
              : Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(8.0)),
      margin: EdgeInsets.only(
          bottom: isLastMessageRight ? 20.0 : 10.0, right: 10.0),
    );
  }
}
