import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:kopdar_app/modules/app/bloc/bloc.dart';
import 'package:kopdar_app/modules/app/bloc/state.dart';
import 'package:kopdar_app/modules/app/page/page.dart';
import 'package:kopdar_app/modules/app/service/session_service.dart';
import 'package:kopdar_app/modules/auth/auth_module.dart';
import 'package:kopdar_app/modules/main/main_module.dart';
import 'package:kopdar_app/modules/main/page/page.dart';
import 'package:kopdar_app/modules/room/room_module.dart';
import 'package:kopdar_app/modules/user/user_module.dart';
import 'package:kopdar_app/utils/helper/route/route_helper.dart';
import 'package:kopdar_app/utils/helper/route/route_logger.dart';
import 'package:kopdar_app/utils/helper/validator.dart';

class AppModule extends MainModule {
  AppModule({
    this.initialPath,
  }) : _service = SessionService();

  final String initialPath;
  final SessionService _service;

  static bool hasLogin() {
    SessionBloc _sessionBloc = Modular.get<SessionBloc>();
    if (_sessionBloc != null && _sessionBloc.state is SessionRunning) {
      SessionRunning _state = _sessionBloc.state;
      return !Validator.isNullOrEmpty(_state.token?.authToken);
    }
    return false;
  }

  @override
  List<Bind> get binds => [
        Bind((i) => _service),
        Bind((i) => SessionBloc()),
      ];

  @override
  Widget get bootstrap => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Kopdar',
        theme: ThemeData(primarySwatch: Colors.blue),
        navigatorKey: RouteHelper().key,
        navigatorObservers: <NavigatorObserver>[
          RouteLogger(),
        ],
        onGenerateRoute: Modular.generateRoute,
      );

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          Modular.initialRoute,
          child: (_, args) => AppPage(initialPath: initialPath),
        ),
        ModularRouter(MainLayout.PATH, module: LayoutModule()),
        ModularRouter(AuthModule.PATH, module: AuthModule()),
        ModularRouter(RoomModule.PATH, module: RoomModule()),
        ModularRouter(UserModule.PATH, module: UserModule()),
      ];
}
