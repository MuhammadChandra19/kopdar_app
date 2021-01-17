import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopdar_app/modules/app/bloc/state.dart';
import 'package:kopdar_app/modules/app/page/initiator.dart';
import 'package:kopdar_app/utils/helper/route/route_helper.dart';
import 'package:kopdar_app/utils/helper/validator.dart';

class AppPage extends StatefulWidget {
  static const String PATH = '/';
  static const String NAME = 'LandingPage';

  final String initialPath;

  AppPage({@required this.initialPath});

  @override
  _AppPageState createState() => _AppPageState();
}

class _AppPageState extends State<AppPage> {
  AppInitiator _i;

  @override
  void initState() {
    _i = AppInitiator();
    _i.init();
    super.initState();
    _i.initApp();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
        bloc: _i.getSessionBloc,
        listener: (context, SessionState state) {
          RouteHelper().navigateToNamedAndRemoveUntil(
            widget.initialPath,
            AppPage.PATH,
          );
          if (state is SessionRunning) {
            bool _hasLogin = !Validator.isNullOrEmpty(state.token?.authToken);
            bool _hasInitApp = state.userAppInfo != null;
            if (_hasLogin) {
              _i.setAuthToken(state.token);
            }

            if (!_hasInitApp) {
              _i.initApp();
            }
            if (!_hasLogin && _hasInitApp) {
              _i.onLogoutPage();
            } else if (_hasLogin) {
              RouteHelper().navigateToNamedAndRemoveUntil(
                widget.initialPath,
                AppPage.PATH,
              );
            }
          }
          if (state is SessionLogout) {
            _i.onLogoutPage();
          }
        },
        child: Container(
          color: Colors.blue,
        ));
  }
}
