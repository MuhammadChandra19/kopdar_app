import 'package:kopdar_app/core/api/v1/user/user.pbgrpc.dart';
import 'package:kopdar_app/core/core_service_bloc.dart';
import 'package:kopdar_app/modules/app/data/authorization_token.dart';
import 'package:kopdar_app/modules/auth/service/auth_service.dart';
import 'package:kopdar_app/modules/auth/signin/bloc/event.dart';
import 'package:kopdar_app/modules/auth/signin/bloc/state.dart';
import 'package:kopdar_app/utils/storage/storage.dart';
import 'package:kopdar_app/utils/storage/storage_keys.dart';

class SignInBloc extends CoreServiceBloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInInitial());
  AuthService _service = AuthService();

  @override
  Stream<SignInState> mapEventToState(SignInEvent event) async* {
    if (event is SetSignIn) {
      yield* call<TokenResponse>(
          request: _service.signIn(event.email),
          successState: (_result, _) async {
            String token = _result.token;
            await Storage().save(StorageKeys.storedAuthKey, token);
            return SignInSuccess(
                authToken: AuthorizationToken(authToken: token));
          },
          loadingState: SignInLoading());
    }
  }
}
