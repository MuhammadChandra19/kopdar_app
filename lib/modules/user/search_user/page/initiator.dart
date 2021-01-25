import 'package:flutter/material.dart';
import 'package:kopdar_app/core/core_initiator.dart';
import 'package:kopdar_app/modules/user/search_user/bloc/bloc.dart';
import 'package:kopdar_app/modules/user/search_user/bloc/event.dart';
import 'package:kopdar_app/utils/helper/debouncer.dart';

class SearchUserInitiator extends CoreInitiator {
  TextEditingController _queryController;
  SearcUserBloc _bloc;

  @override
  void dispose() {
    _bloc.close();
    _queryController.dispose();
  }

  @override
  void init() {
    _bloc = SearcUserBloc();
    _queryController = TextEditingController();
  }

  final _debouncer = Debouncer(delay: Duration(milliseconds: 1000));

  SearcUserBloc get getBloc => _bloc;
  TextEditingController get getQueryController => _queryController;

  void onSearchUser(String query) {
    _debouncer.run(() async {
      _bloc.add(SetSearchUser(query: query));
    });
  }
}
