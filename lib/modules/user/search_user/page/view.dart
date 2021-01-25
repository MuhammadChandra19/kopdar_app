import 'package:flutter/material.dart';
import 'package:kopdar_app/core/api/v1/user/user.pbgrpc.dart';

class SearchUserView extends StatelessWidget {
  final SearchResponse list;
  final bool isLoading;

  const SearchUserView({
    Key key,
    this.list,
    this.isLoading,
  }) : super(key: key);

  bool isDefaultAvatar(String avatar) {
    return avatar == 'default';
  }

  @override
  Widget build(BuildContext context) {
    final results = list?.users;
    if (isLoading) {
      return Center(child: CircularProgressIndicator());
    } else {
      if (results == null) {
        return Center(child: Text('Enter username'));
      }
      if (results.isEmpty) {
        return Center(child: Text('No Results'));
      }
      return Expanded(
        child: (ListView.separated(
            itemCount: results.length,
            separatorBuilder: (BuildContext context, int index) => Divider(),
            itemBuilder: (context, i) {
              return ListTile(
                key: new Key(i.toString()),
                onTap: () {},
                leading: CircleAvatar(
                    child: isDefaultAvatar(results[i].photourl)
                        ? Icon(Icons.person)
                        : Image.network(results[i].photourl)),
                title: Text(results[i].name),
                subtitle: Text(results[i].username),
              );
            })),
      );
    }
  }
}
