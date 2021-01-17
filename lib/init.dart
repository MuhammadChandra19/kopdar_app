import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:kopdar_app/modules/app/page/page.dart';
import 'package:kopdar_app/modules/auth/route/path.dart';
import 'package:kopdar_app/modules/main/page/page.dart';
import 'package:kopdar_app/modules/main/routes/path.dart';
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
    Path().registerNames(
        {AppPage.PATH: AppPage.NAME, ...authPath, ...mainAppPath});
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
