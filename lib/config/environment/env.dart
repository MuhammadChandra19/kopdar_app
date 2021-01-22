import 'package:kopdar_app/config/environment/env_type.dart';

class Env {
  Env._();
  static final Env instance = Env._();

  factory Env() {
    return instance;
  }

  String serverIP;
  int serverPort;
  EnvType environmentType;

  void setDev() {
    serverIP = '10.0.2.2';
    serverPort = 8080;
  }
}
