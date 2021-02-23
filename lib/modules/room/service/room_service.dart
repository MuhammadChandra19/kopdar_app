import 'package:grpc/grpc.dart';
import 'package:kopdar_app/core/core_rpc_service.dart';
import 'package:kopdar_app/core/api/v1/chat/chat.pbgrpc.dart';

class RoomService extends CoreRPCService {
  static ChatProtoClient client;

  RoomService() {
    client = ChatProtoClient(network.createChannel(),
        options: CallOptions(
            metadata: {'authorization': network.authorization.authToken}));
  }

  Future<void> addUserToRoom(UserRoom userRoom) async {
    return client.addUserToRoom(userRoom);
  }

  Future<void> createRoom(Room room) async {
    return client.createRoom(room);
  }
}
