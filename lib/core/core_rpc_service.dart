import 'package:grpc/grpc.dart';
import 'package:kopdar_app/config/network/RPC/network_rpc_library.dart';

abstract class CoreRPCService<T extends Client> {
  final NetworkRPCLibrary network = NetworkRPCLibrary();

  CallOptions makeOptions() {
    return CallOptions(
        metadata: {'authorization': network.authorization.authToken});
  }

  void shutDownClient(ClientChannel client) {
    if (client != null) {
      client?.shutdown();
    }
  }
}
