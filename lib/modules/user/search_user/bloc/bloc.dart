import 'package:kopdar_app/core/api/v1/user/user.pbgrpc.dart';
import 'package:kopdar_app/core/core_service_bloc.dart';
import 'package:kopdar_app/modules/user/search_user/bloc/event.dart';
import 'package:kopdar_app/modules/user/search_user/bloc/state.dart';
import 'package:kopdar_app/modules/user/service/user_service.dart';

class SearcUserBloc extends CoreServiceBloc<SearchUserEvent, SearchUserState> {
  SearcUserBloc() : super(SearchUserInitial());
  UserService _service = UserService();

  @override
  Stream<SearchUserState> mapEventToState(SearchUserEvent event) async* {
    if (event is SetSearchUser) {
      yield* call<SearchResponse>(
          request: _service.searchUser(event.query),
          successState: (_result, _) => SearchUserReturn(users: _result),
          loadingState: SearchUserLoading());
    }
  }
}
