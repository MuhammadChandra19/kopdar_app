import 'package:grpc/grpc.dart';
import 'package:kopdar_app/config/environment/env.dart';
import 'package:kopdar_app/core/api/v1/user/user.pbgrpc.dart';
import 'package:kopdar_app/core/core_rpc_service.dart';
import 'package:kopdar_app/modules/auth/register/data/user_register.dart';

class AuthService extends CoreRPCService {
  static UserProtoClient client;

  AuthService() {
    var channel = ClientChannel('localhost',
        port: 8080,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));
    client = UserProtoClient(channel,
        options: CallOptions(metadata: {'authorization': 'unauthenticated'}));
  }

  Future<TokenResponse> registerUser(UserRegister user) async {
    return client.registerUser(User()
      ..username = user.name
      ..email = user.email
      ..photourl = 'default'
      ..name = user.name);
  }

  Future<TokenResponse> signIn(String email) async {
    return client.signIn(SignInRequest()..email = email);
  }
}
