import 'package:kopdar_app/config/database/helper/initial.dart';
import 'package:kopdar_app/core/core_service_bloc.dart';
import 'package:kopdar_app/modules/user/data/user.dart';
import 'package:kopdar_app/modules/user/service/db/user_db_service.dart';
import 'package:kopdar_app/modules/user/user_profile/bloc/event.dart';
import 'package:kopdar_app/modules/user/user_profile/bloc/state.dart';

class UserProfileBloc
    extends CoreServiceBloc<UserProfileEvent, UserProfileState> {
  UserProfileBloc() : super(UserProfileInitial());
  UserDatabaseService _dbService =
      UserDatabaseService(database: InitialDatabaseHelper().database);

  @override
  Stream<UserProfileState> mapEventToState(UserProfileEvent event) async* {
    if (event is StartChatWithUser) {
      UserData userData = UserData(
          photoUrl: null,
          userId: event.user.email,
          username: event.user.username);
      _dbService.saveUser(userData);
    }
  }
}
