import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kopdar_app/modules/chat/pages/chat-screen/page/view.dart';
import 'package:kopdar_app/modules/home/page/view.dart';
import 'package:kopdar_app/modules/profile/my-profile/page/view.dart';
import 'package:kopdar_app/widgets/models/bottom_nav_model.dart';

List<BottomNav> bottomNavList = [
  BottomNav(page: HomeView(), title: Text('Kopdar'), icon: Icon(Icons.home)),
  BottomNav(
      page: ChatView(), title: Text('Chat'), icon: Icon(Icons.chat_bubble)),
  BottomNav(
      page: MyProfileView(), title: Text('Settings'), icon: Icon(Icons.person))
];
