import 'package:flutter/material.dart';
import 'package:kopdar_app/modules/main/routes/bottom_nav_list.dart';

class MainLayoutView extends StatefulWidget {
  @override
  _MainLayoutViewState createState() => _MainLayoutViewState();
}

class _MainLayoutViewState extends State<MainLayoutView> {
  int _selectedPageIndex = 0;

  void _selectPage(int idx) {
    setState(() {
      _selectedPageIndex = idx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: bottomNavList[_selectedPageIndex].title,
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: IndexedStack(
          index: _selectedPageIndex,
          children: <Widget>[
            ...bottomNavList.map((item) => Container(
                  child: item.page,
                  padding: EdgeInsets.all(10),
                ))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedFontSize: 12.0,
          selectedFontSize: 12.0,
          iconSize: 24.0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: _selectPage,
          currentIndex: _selectedPageIndex,
          backgroundColor: Theme.of(context).backgroundColor,
          unselectedItemColor: Theme.of(context).accentColor,
          selectedItemColor: Colors.white,
          items: [
            ...bottomNavList.map(
                (item) => BottomNavigationBarItem(icon: item.icon, label: ''))
          ],
        ));
  }
}
