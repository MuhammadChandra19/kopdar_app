import 'package:kopdar_app/core/core_service_bloc.dart';
import 'package:kopdar_app/modules/app/data/authorization_token.dart';
import 'package:kopdar_app/modules/auth/register/bloc/event.dart';
import 'package:kopdar_app/modules/auth/register/bloc/state.dart';

class RegisterBloc extends CoreServiceBloc<RegisterEvent, RegisterState> {
  RegisterBloc() : super(RegisterInitial());

  @override
  Stream<RegisterState> mapEventToState(RegisterEvent event) async* {
    if (event is SetRegister) {
      yield RegisterSuccess(authToken: AuthorizationToken(authToken: "test"));
    }
  }
}
