import 'package:flutter_modular/flutter_modular.dart';
import 'package:kopdar_app/modules/auth/register/page/page.dart';
import 'package:kopdar_app/modules/auth/signin/page/page.dart';

class AuthModule extends ChildModule {
  static const PATH = '/auth';
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(RegisterPage.BRANCH_PATH,
            child: (_, args) => RegisterPage()),
        ModularRouter(SignInPage.BRANCH_PATH, child: (_, args) => SignInPage())
      ];
}
