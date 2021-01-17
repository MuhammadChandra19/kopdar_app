import 'package:kopdar_app/core/core_service_bloc.dart';
import 'package:kopdar_app/modules/app/data/authorization_token.dart';
import 'package:kopdar_app/modules/auth/signin/bloc/event.dart';
import 'package:kopdar_app/modules/auth/signin/bloc/state.dart';
import 'package:kopdar_app/utils/storage/storage.dart';
import 'package:kopdar_app/utils/storage/storage_keys.dart';

class SignInBloc extends CoreServiceBloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInInitial());

  @override
  Stream<SignInState> mapEventToState(SignInEvent event) async* {
    if (event is SetSignIn) {
      await Storage().save(StorageKeys.storedAuthKey, 'test');
      yield SignInSuccess(authToken: AuthorizationToken(authToken: 'test'));
    }
  }
}
