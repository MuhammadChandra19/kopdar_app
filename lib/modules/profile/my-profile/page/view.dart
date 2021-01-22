import 'package:flutter/material.dart';
import 'package:kopdar_app/modules/app/page/page.dart';
import 'package:kopdar_app/utils/helper/route/route_helper.dart';
import 'package:kopdar_app/utils/storage/storage.dart';
import 'package:kopdar_app/utils/storage/storage_keys.dart';

class MyProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: RaisedButton(
          child: Text('Logout'),
          onPressed: () async {
            await Storage().remove(StorageKeys.storedAuthKey);
            RouteHelper().replaceNamed(AppPage.PATH);
            // Modular.to.pushReplacementNamed(AppPage.PATH);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
          color: Theme.of(context).primaryColor,
          textColor: Theme.of(context).primaryTextTheme.button.color,
        ),
      ),
    );
  }
}
