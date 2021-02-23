import 'package:equatable/equatable.dart';
import 'package:kopdar_app/core/api/v1/chat/chat.pb.dart';
import 'package:kopdar_app/modules/chat/data/chat.dart';

abstract class ChatEvent extends Equatable {
  ChatEvent([mProps = const []]) : this._mProps = mProps;
  final List _mProps;
  @override
  List<Object> get props => this._mProps;
}

class LoadChat extends ChatEvent {
  final StreamConnect streamConnect;
  LoadChat({this.streamConnect}) : super([streamConnect]);
}

class PushChatList extends ChatEvent {
  final ChatData chatData;
  PushChatList({this.chatData}) : super([chatData]);
}

class InitChat extends ChatEvent {
  final StreamConnect stream;
  InitChat({this.stream}) : super([stream]);
}

class SendChat extends ChatEvent {
  final ContentMessage contentMessage;
  SendChat({this.contentMessage}) : super([contentMessage]);
}
