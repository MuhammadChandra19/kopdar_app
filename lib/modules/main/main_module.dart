import 'package:flutter_modular/flutter_modular.dart';

class LayoutModule extends ChildModule {
  static const PATH = '/home';
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        // ModularRouter(MainLayout.PATH, child: (_, args) => MainLayout()),
      ];
  static Inject get to => Inject<LayoutModule>.of();
}
