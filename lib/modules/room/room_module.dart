import 'package:flutter_modular/flutter_modular.dart';
import 'package:kopdar_app/modules/room/pages/rooms/pages/page.dart';

class RoomModule extends ChildModule {
  static const PATH = '/room';

  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers =>
      [ModularRouter(RoomPage.BRANCH_PATH, child: (_, args) => RoomPage())];
}
