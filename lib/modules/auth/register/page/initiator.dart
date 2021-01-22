import 'package:flutter/material.dart';
import 'package:kopdar_app/core/core_initiator.dart';
import 'package:kopdar_app/modules/app/bloc/bloc.dart';
import 'package:kopdar_app/modules/app/bloc/event.dart';
import 'package:kopdar_app/modules/app/data/authorization_token.dart';
import 'package:kopdar_app/modules/auth/register/bloc/bloc.dart';
import 'package:kopdar_app/modules/auth/register/bloc/event.dart';
import 'package:kopdar_app/modules/auth/register/data/user_register.dart';

class RegisterInitiator extends CoreInitiator {
  TextEditingController _userNameController;
  TextEditingController _emailController;

  RegisterBloc _bloc;
  SessionBloc _sessionBloc;
  GlobalKey<FormState> _formKey;

  @override
  void dispose() {
    _bloc.close();
    _emailController.dispose();
    _userNameController.dispose();
  }

  @override
  void init() {
    _bloc = RegisterBloc();
    _sessionBloc = SessionBloc();
    _emailController = TextEditingController();
    _userNameController = TextEditingController();
    _formKey = GlobalKey<FormState>();
  }

  TextEditingController get geEmailtController => _emailController;
  TextEditingController get getUsernameController => _userNameController;
  RegisterBloc get getBloc => _bloc;
  GlobalKey<FormState> get getFormKey => _formKey;

  void onPressRegister() {
    String username = _userNameController.text;
    String email = _emailController.text;
    _bloc
        .add(SetRegister(register: UserRegister(email: email, name: username)));
  }

  void onRegisterSuccess(AuthorizationToken token) {
    _sessionBloc.add(InitiateToken(token: token));
  }
}
