import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:kopdar_app/config/database/helper/initial.dart';
import 'package:kopdar_app/modules/app/page/page.dart';
import 'package:kopdar_app/modules/auth/route/path.dart';
import 'package:kopdar_app/modules/main/page/page.dart';
import 'package:kopdar_app/modules/main/routes/path.dart';
import 'package:kopdar_app/modules/room/routes/path.dart';
import 'package:kopdar_app/modules/user/routes/path.dart';
import 'package:kopdar_app/utils/helper/route/path.dart';
import 'package:kopdar_app/utils/helper/route/route_helper.dart';

class Init extends StatelessWidget {
  final Function initEnv;
  final Widget Function(BuildContext context, String initialPath) appBuilder;

  Init({
    @required this.initEnv,
    @required this.appBuilder,
  });

  Future init() async {
    initEnv();

    //init database
    try {
      await InitialDatabaseHelper().open();
    } catch (e, s) {
      debugPrint('$e--\n$s');
    }

    Path().registerNames({
      AppPage.PATH: AppPage.NAME,
      ...authPath,
      ...mainAppPath,
      ...roomPath,
      ...userPath
    });
    RouteHelper().setKey(Modular.navigatorKey);
    return 'next';
  }

  Widget build(BuildContext context) {
    return FutureBuilder(
        future: init(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.data.toString().contains("fall")) {
              return Container();
            }
            return appBuilder(
              context,
              MainLayout.PATH,
            );
          }
          return Container(
            color: Colors.blueAccent,
          );
        });
  }
}
