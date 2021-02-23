import 'package:kopdar_app/core/core_service_bloc.dart';
import 'package:kopdar_app/modules/app/bloc/event.dart';
import 'package:kopdar_app/modules/app/bloc/state.dart';
import 'package:kopdar_app/modules/app/data/authorization_token.dart';
import 'package:kopdar_app/modules/app/data/profile.dart';
import 'package:kopdar_app/modules/app/data/user_app_info.dart';
import 'package:kopdar_app/utils/helper/validator.dart';
import 'package:kopdar_app/utils/storage/storage.dart';
import 'package:kopdar_app/utils/storage/storage_keys.dart';
import 'package:jwt_decode/jwt_decode.dart';

class SessionBloc extends CoreServiceBloc<SessionEvent, SessionState> {
  SessionBloc() : super(SessionUninitialized());

  @override
  Stream<SessionState> mapEventToState(SessionEvent event) async* {
    if (event is Logout) {
      yield* _mapLogoutToState(event);
    }
    if (event is InitiateToken) {
      yield* _mapInitiateTokenToState(event);
    }
    if (event is InitiateAppStatus) {
      yield* _mapInitiateAppStatusToState();
    }
  }

  Stream<SessionState> _mapInitiateTokenToState(
    InitiateToken event,
  ) async* {
    SessionRunning _state = (state is! SessionRunning)
        ? SessionRunning.initial()
        : (state as SessionRunning);
    yield _state.copyWith(token: event.token);
  }

  Stream<SessionState> _mapLogoutToState(Logout event) async* {
    if (event.isForceLogout) {
      yield SessionLogout(
        isForceLogout: event.isForceLogout,
      );
    } else {
      // API call for logout
    }
  }

  Stream<SessionState> _mapInitiateAppStatusToState() async* {
    SessionRunning _state = (state is! SessionRunning)
        ? SessionRunning.initial()
        : (state as SessionRunning);
    yield await UserAppInfo.getUserAppInfo().then((value) async {
      AuthorizationToken token = AuthorizationToken.initial();
      Profile shortProfile = Profile();
      String authToken = await Storage()
          .retrieve(StorageKeys.storedAuthKey)
          .catchError((_) => null);
      if (!Validator.isNullOrEmpty(authToken)) {
        token = AuthorizationToken(authToken: authToken);
        shortProfile = Profile.fromJWT(Jwt.parseJwt(authToken));
      }

      // Print the payload

      return _state.copyWith(
          token: token, userAppInfo: value, shortProfile: shortProfile);
    });
  }
}
