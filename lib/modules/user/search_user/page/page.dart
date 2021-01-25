import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopdar_app/modules/user/search_user/bloc/state.dart';
import 'package:kopdar_app/modules/user/search_user/page/initiator.dart';
import 'package:kopdar_app/modules/user/search_user/page/view.dart';
import 'package:kopdar_app/modules/user/user_module.dart';

class SearchUserPage extends StatefulWidget {
  static const BRANCH_PATH = '/search';
  static const ROUTE_NAME = 'Search';
  static const PATH = UserModule.PATH + BRANCH_PATH;
  @override
  _SearchUserPageState createState() => _SearchUserPageState();
}

class _SearchUserPageState extends State<SearchUserPage> {
  SearchUserInitiator _i;
  @override
  void initState() {
    _i = SearchUserInitiator();
    _i.init();
    super.initState();
  }

  @override
  void dispose() {
    _i.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration:
                  InputDecoration(border: OutlineInputBorder(), hintText: ''),
              onChanged: _i.onSearchUser,
            ),
          ),
          BlocListener(
            bloc: _i.getBloc,
            listener: (context, SearchUserState state) {},
            child: BlocBuilder(
              bloc: _i.getBloc,
              builder: (context, SearchUserState state) => SearchUserView(
                isLoading: (state is SearchUserLoading) ?? false,
                list: (state is SearchUserReturn) ? state.users : null,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
