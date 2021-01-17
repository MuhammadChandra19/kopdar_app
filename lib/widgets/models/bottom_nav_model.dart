import 'package:flutter/material.dart';

class BottomNav {
  final Widget page;
  final Widget title;
  final Widget icon;
  final Widget action;

  BottomNav(
      {@required this.page,
      @required this.title,
      @required this.icon,
      this.action});
}
