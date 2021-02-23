import 'package:equatable/equatable.dart';
import 'package:kopdar_app/modules/chat/data/chat.dart';

class ChatState extends Equatable {
  ChatState([mProps = const []]) : this._mProps = mProps;
  final List _mProps;

  @override
  List<Object> get props => this._mProps;
}

class ChatInitial extends ChatState {}

class ChatLoading extends ChatState {}

class ChatSending extends ChatState {}

class ChatSendingFinish extends ChatState {}

class ChatList extends ChatState {
  final List<ChatData> chats;
  ChatList({this.chats}) : super([chats]);

  static ChatList initial() {
    return ChatList(chats: []);
  }

  ChatList copyWith({List<ChatData> chats}) {
    return ChatList(chats: chats);
  }
}

class ChatStateStatus extends ChatState {
  final bool isShutDown;

  ChatStateStatus({this.isShutDown}) : super([isShutDown]);
}
