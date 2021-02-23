import 'package:grpc/grpc.dart';
import 'package:kopdar_app/core/core_rpc_service.dart';
import 'package:kopdar_app/core/api/v1/chat/chat.pbgrpc.dart';

class ChatService extends CoreRPCService<ChatProtoClient> {
  Map<String, ClientChannel> mapClient;

  Stream<StreamResponse> createStream(StreamConnect streamConnect) {
    mapClient['createStream'] = network.createChannel();
    return ChatProtoClient(mapClient['createStream'], options: makeOptions())
        .createStream(streamConnect);
  }

  Future<Empty> sendMessage(ContentMessage contentMessage) async {
    mapClient['sendMessage'] = network.createChannel();
    return ChatProtoClient(mapClient['sendMessage'], options: makeOptions())
        .sendMessage(contentMessage);
  }
}
