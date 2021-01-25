import 'package:flutter_modular/flutter_modular.dart';
import 'package:kopdar_app/modules/user/search_user/page/page.dart';

class UserModule extends ChildModule {
  static const PATH = "/user";
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(SearchUserPage.BRANCH_PATH,
            child: (_, args) => SearchUserPage())
      ];
}
