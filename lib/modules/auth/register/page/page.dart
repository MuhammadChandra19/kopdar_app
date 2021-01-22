import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopdar_app/modules/auth/auth_module.dart';
import 'package:kopdar_app/modules/auth/register/bloc/state.dart';
import 'package:kopdar_app/modules/auth/register/page/initiator.dart';
import 'package:kopdar_app/modules/auth/register/page/view.dart';

class RegisterPage extends StatefulWidget {
  static const BRANCH_PATH = '/register';
  static const ROUTE_NAME = 'Register';
  static const PATH = AuthModule.PATH + BRANCH_PATH;
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  RegisterInitiator _i;
  @override
  void initState() {
    _i = RegisterInitiator();
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
    return BlocListener(
      bloc: _i.getBloc,
      listener: (context, state) {
        if (state is RegisterSuccess) {
          _i.onRegisterSuccess(state.authToken);
        }
      },
      child: BlocBuilder(
          bloc: _i.getBloc,
          builder: (context, state) => RegisterView(
                emailController: _i.geEmailtController,
                usernameController: _i.getUsernameController,
                onPressedRegister: _i.onPressRegister,
                registerFormKey: _i.getFormKey,
                isLoading: (state is RegisterLoading) ?? false,
              )),
    );
  }
}
