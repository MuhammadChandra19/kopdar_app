import 'package:flutter_modular/flutter_modular.dart';
import 'package:kopdar_app/config/network/RPC/network_rpc_library.dart';
import 'package:kopdar_app/core/core_initiator.dart';
import 'package:kopdar_app/modules/app/bloc/bloc.dart';
import 'package:kopdar_app/modules/app/bloc/event.dart';
import 'package:kopdar_app/modules/app/data/authorization_token.dart';
import 'package:kopdar_app/modules/app/page/page.dart';
import 'package:kopdar_app/modules/auth/signin/page/page.dart';
// import 'package:kopdar_app/modules/auth/signin/page/page.dart';
import 'package:kopdar_app/utils/helper/route/route_helper.dart';

class AppInitiator extends CoreInitiator {
  SessionBloc _sessionBloc;
  @override
  void dispose() {}

  @override
  void init() {
    _sessionBloc = Modular.get<SessionBloc>();
  }

  SessionBloc get getSessionBloc => _sessionBloc;

  void setAuthToken(AuthorizationToken token) {
    NetworkRPCLibrary().setAuthorization(token);
    // NetworkHttpInterface().setAuthorization(token);
  }

  void initApp() async {
    _sessionBloc.add(InitiateAppStatus());
  }

  void onLogoutPage() {
    RouteHelper().navigateToNamedAndRemoveUntil(SignInPage.PATH, AppPage.PATH);
  }
}
