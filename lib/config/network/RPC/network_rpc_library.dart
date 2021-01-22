import 'package:grpc/grpc.dart';
import 'package:kopdar_app/config/environment/env.dart';

class NetworkRPCLibrary {
  ClientChannel baseClient<T>() {
    var channel = ClientChannel(Env().serverIP,
        port: Env().serverPort,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    return channel;
  }
}
