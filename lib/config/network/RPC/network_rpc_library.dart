import 'package:grpc/grpc.dart';
import 'package:kopdar_app/modules/app/data/authorization_token.dart';

class NetworkRPCLibrary {
  NetworkRPCLibrary._();

  static final NetworkRPCLibrary _instance = NetworkRPCLibrary._();
  factory NetworkRPCLibrary() => _instance;

  AuthorizationToken authorization = AuthorizationToken.initial();
  void setAuthorization(AuthorizationToken token) {
    this.authorization = token;
  }

  ClientChannel createChannel() {
    return ClientChannel('localhost',
        port: 8080,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
  }

  void shutdown() {}
}
