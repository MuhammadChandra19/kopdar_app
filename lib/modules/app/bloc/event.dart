import 'package:kopdar_app/modules/app/data/authorization_token.dart';

abstract class SessionEvent {}

class InitiateToken extends SessionEvent {
  final AuthorizationToken token;

  InitiateToken({this.token});
}

class InitiateAppStatus extends SessionEvent {
  // final PropsRequest props;

  InitiateAppStatus();
}

class Logout extends SessionEvent {
  bool isForceLogout;
  Logout({this.isForceLogout = true});
}
