import 'package:flutter/material.dart';
import 'package:kopdar_app/modules/app/page/page.dart';
import 'package:kopdar_app/utils/helper/route/path.dart';

class RouteHelper {
  RouteHelper._();
  static final RouteHelper _instance = RouteHelper._();
  factory RouteHelper() => _instance;

  GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();

  void setKey(GlobalKey<NavigatorState> key) {
    this.key = key;
  }

  Future<dynamic> navigateToNamed(String route, {Object arguments}) {
    if (Path().current() == route) return null;
    return key.currentState.pushNamed(route, arguments: arguments);
  }

  Future<dynamic> navigateToNamedAndRemoveUntil(
    String route,
    String predicateRoute, {
    Object arguments,
  }) {
    // check path
    if (!Path().hasPath(predicateRoute)) predicateRoute = AppPage.PATH;
    Path().popUntil(predicateRoute);
    return key.currentState.pushNamedAndRemoveUntil(
        route, ModalRoute.withName(predicateRoute),
        arguments: arguments);
  }

  Future<dynamic> navigateToNamedAndRemoveElse(
    String route, {
    Object arguments,
  }) {
    Path().flush();
    return key.currentState.pushNamedAndRemoveUntil(
      route,
      (Route<dynamic> route) => false,
      arguments: arguments,
    );
  }

  Future<dynamic> navigateTo(
    Widget newPage,
    String routeName, {
    Object arguments,
  }) {
    return key.currentState.push(
      MaterialPageRoute(
        settings: RouteSettings(
          name: routeName,
          arguments: arguments,
        ),
        builder: (context) => newPage,
      ),
    );
  }

  Future<dynamic> replaceNamed(String route, {Object arguments}) {
    return key.currentState.pushReplacementNamed(route, arguments: arguments);
  }

  void pop([Object result]) => key.currentState.pop(result);

  void popUntil(String predicatePath) {
    return key.currentState.popUntil(ModalRoute.withName(predicatePath));
  }
}
