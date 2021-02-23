import 'dart:async';
import 'package:intl/intl.dart';
import 'package:kopdar_app/core/api/v1/chat/chat.pb.dart';
import 'package:kopdar_app/core/core_service_bloc.dart';
import 'package:kopdar_app/modules/chat/data/chat.dart';
import 'package:kopdar_app/modules/chat/pages/chat-screen/bloc/event.dart';
import 'package:kopdar_app/modules/chat/pages/chat-screen/bloc/state.dart';
import 'package:kopdar_app/modules/chat/service/chat_service.dart';
import 'package:kopdar_app/modules/chat/service/db/chat_db_service.dart';

class ChatBloc extends CoreServiceBloc<ChatEvent, ChatState> {
  ChatBloc() : super(ChatInitial());
  ChatService _service = ChatService();
  ChatDatabaseService _databaseService = ChatDatabaseService();

  @override
  Stream<ChatState> mapEventToState(ChatEvent event) async* {
    if (event is LoadChat) {
      yield* _mapLoadChatToState(event);
    } else if (event is SendChat) {
      yield* _mapAddChatToState(event);
    } else if (event is InitChat) {
      yield* _mapPushChatToState(event);
    }
  }

  Stream<ChatState> _mapLoadChatToState(LoadChat event) async* {
    yield* stream<StreamResponse>(
        request: _service.createStream(event.streamConnect),
        successState: (_result, _) async {
          ChatData chatData = _mapChatData(_result, 'sent');
          await _databaseService.insertChat(chatData);
          return add(InitChat(stream: event.streamConnect));
        },
        restart: () => add(LoadChat(streamConnect: event.streamConnect)),
        shutdown: () =>
            _service.shutDownClient(_service.mapClient['createStream']));
  }

  Stream<ChatState> _mapPushChatToState(InitChat event) async* {
    ChatList _state =
        (state is! ChatList) ? ChatList.initial() : (state as ChatList);

    yield await _databaseService
        .getHistoryChat(event.stream.roomKey)
        .then((value) => _state.copyWith(chats: value));
  }

  Stream<ChatState> _mapAddChatToState(SendChat event) async* {
    yield* call<Empty>(
      request: _service.sendMessage(event.contentMessage),
      successState: (_, __) => ChatSendingFinish(),
      loadingState: ChatSending(),
    );
  }

  ChatData _mapChatData(StreamResponse response, String status) {
    return ChatData(
        content: response.message.content,
        contentType: response.message.type,
        roomName: response.message.roomKey,
        sender: response.message.sender,
        sendAt: DateFormat('dd MMM kk:mm').format(
            DateTime.fromMillisecondsSinceEpoch(
                int.parse(DateTime.now().toString()))),
        status: status);
  }
}
