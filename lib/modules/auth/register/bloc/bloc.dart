import 'package:kopdar_app/core/api/v1/user/user.pbgrpc.dart';
import 'package:kopdar_app/core/core_service_bloc.dart';
import 'package:kopdar_app/modules/app/data/authorization_token.dart';

import 'package:kopdar_app/modules/auth/register/bloc/event.dart';
import 'package:kopdar_app/modules/auth/register/bloc/state.dart';
import 'package:kopdar_app/modules/auth/service/auth_service.dart';
import 'package:kopdar_app/utils/storage/storage.dart';
import 'package:kopdar_app/utils/storage/storage_keys.dart';

class RegisterBloc extends CoreServiceBloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterInitial());
  AuthService _service = AuthService();

  @override
  Stream<RegisterState> mapEventToState(RegisterEvent event) async* {
    if (event is SetRegister) {
      yield* call<TokenResponse>(
          request: _service.registerUser(event.register),
          successState: (_result, _) async {
            String token = _result.token;
            await Storage().save(StorageKeys.storedAuthKey, token);
            return RegisterSuccess(
                authToken: AuthorizationToken(authToken: token));
          },
          loadingState: RegisterLoading());
    }
  }
}
