import 'package:flutter/material.dart';
import 'package:kopdar_app/modules/user/user_module.dart';
import 'package:kopdar_app/modules/user/user_profile/data/user_profile_argument.dart';
import 'package:kopdar_app/modules/user/user_profile/page/initiator.dart';

class UserProfilePage extends StatefulWidget {
  static const PATH = UserModule.PATH + BRANCH_PATH;
  static const ROUTE_NAME = 'UserProfile';
  static const BRANCH_PATH = '/user-profile';

  final UserProfileArgument argument;

  const UserProfilePage({Key key, this.argument}) : super(key: key);

  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  UserProfileInitiator _i;

  @override
  void initState() {
    _i = UserProfileInitiator(argument: widget.argument);
    _i.init();
    super.initState();
  }

  @override
  void dispose() {
    _i.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
