import 'package:flutter/material.dart';
import 'package:kopdar_app/core/core_initiator.dart';
import 'package:kopdar_app/modules/user/user_profile/bloc/bloc.dart';
import 'package:kopdar_app/modules/user/user_profile/bloc/event.dart';
import 'package:kopdar_app/modules/user/user_profile/data/user_profile_argument.dart';

class UserProfileInitiator extends CoreInitiator {
  final UserProfileArgument argument;
  UserProfileBloc _bloc;

  UserProfileInitiator({
    @required this.argument,
  }); 

  @override
  void dispose() {
    _bloc.close();
  }

  @override
  void init() {
    _bloc = UserProfileBloc();
  }

  UserProfileBloc get getBloc => _bloc;

  void startChat() {
    _bloc.add(StartChatWithUser(user: this.argument.user));
  }
}
