import 'package:grpc/grpc.dart';
import 'package:kopdar_app/core/core_rpc_service.dart';
import 'package:kopdar_app/core/api/v1/user/user.pbgrpc.dart';

class UserService extends CoreRPCService<UserProtoClient> {
  static UserProtoClient client;

  UserService() {
    client = UserProtoClient(network.createChannel(),
        options: CallOptions(
            metadata: {'authorization': network.authorization.authToken}));
  }

  Future<SearchResponse> searchUser(String key) async {
    return client.searchUser(SearchParams()..query = key);
  }
}
