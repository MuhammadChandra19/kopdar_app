import 'package:equatable/equatable.dart';
import 'package:kopdar_app/core/api/v1/user/user.pbgrpc.dart';

abstract class UserProfileEvent extends Equatable {
  UserProfileEvent([mProps = const []]) : this._mProps = mProps;
  final List _mProps;
  @override
  List<Object> get props => this._mProps;
}

class GetUserEvents extends UserProfileEvent {
  final String id;

  GetUserEvents({this.id}) : super([id]);
}

class SaveUserEvents extends UserProfileEvent {
  final User user;

  SaveUserEvents({this.user}) : super([user]);
}

class StartChatWithUser extends UserProfileEvent {
  final User user;

  StartChatWithUser({this.user}) : super([user]);
}
