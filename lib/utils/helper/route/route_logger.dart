import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kopdar_app/modules/app/page/page.dart';
import 'package:kopdar_app/utils/helper/route/path.dart';
import 'package:kopdar_app/utils/helper/route/route_helper.dart';

class RouteLogger extends RouteObserver<PageRoute<dynamic>> {
  @override
  void didPush(Route<dynamic> route, Route<dynamic> previousRoute) {
    super.didPush(route, previousRoute);
    if (route is PageRoute) {
      Path().push(route.settings.name);
      // Log.info(
      //   'Route Observer',
      //   'Push screen: \'${Path().now()}\' (${Path().nowTag()})',
      // );
    }
  }

  @override
  void didReplace({Route<dynamic> newRoute, Route<dynamic> oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (newRoute is PageRoute) {
      Path().pop();
      Path().push(newRoute.settings.name);
      // Log.info(
      //   'Route Observer',
      //   'Replace screen: \'${oldRoute.settings.name}\' (${Path().tag(oldRoute.settings.name)}) to \'${Path().now()}\' (${Path().nowTag()})',
      // );
    }
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic> previousRoute) {
    super.didPop(route, previousRoute);
    if (previousRoute is PageRoute && route is PageRoute) {
      Path().pop();
      // Log.info(
      //   'Route Observer',
      //   'Pop screen: \'${route.settings.name}\' (${Path().tag(route.settings.name)}) to \'${previousRoute.settings.name}\' (${Path().nowTag()})',
      // );
    }

    if (Path().now() == AppPage.PATH) {
      if (Platform.isAndroid)
        SystemNavigator.pop(animated: true);
      else
        Future.delayed(
          Duration.zero,
          () => RouteHelper().navigateToNamed(route.settings.name),
        );
    }
  }
}
