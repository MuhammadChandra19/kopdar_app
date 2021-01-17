import 'package:flutter/material.dart';
import 'package:kopdar_app/modules/main/main_module.dart';
import 'package:kopdar_app/modules/main/page/view.dart';

class MainLayout extends StatelessWidget {
  static const BRANCH_PATH = '';
  static const ROUTE_NAME = 'AppMain';
  static const PATH = LayoutModule.PATH + BRANCH_PATH;
  @override
  Widget build(BuildContext context) {
    return MainLayoutView();
  }
}
