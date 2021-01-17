import 'package:equatable/equatable.dart';
import 'package:kopdar_app/modules/app/data/authorization_token.dart';
import 'package:kopdar_app/modules/app/data/user_app_info.dart';

abstract class SessionState extends Equatable {
  SessionState([this.mProps = const []]);

  final List mProps;

  @override
  List<Object> get props => this.mProps;
}

class SessionUninitialized extends SessionState {}

class SessionLogout extends SessionState {
  final bool isForceLogout;
  SessionLogout({this.isForceLogout});
}

class SessionRunning extends SessionState {
  final AuthorizationToken token;
  final UserAppInfo userAppInfo;

  SessionRunning({this.token, this.userAppInfo}) : super([token, userAppInfo]);

  static SessionRunning initial() {
    return SessionRunning(
        token: AuthorizationToken.initial(), userAppInfo: null);
  }

  SessionRunning copyWith({AuthorizationToken token, UserAppInfo userAppInfo}) {
    return SessionRunning(
        token: token ?? this.token,
        userAppInfo: userAppInfo ?? this.userAppInfo);
  }
}
