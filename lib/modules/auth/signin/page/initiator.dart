import 'package:flutter/material.dart';
import 'package:kopdar_app/core/core_initiator.dart';
import 'package:kopdar_app/modules/app/bloc/bloc.dart';
import 'package:kopdar_app/modules/app/bloc/event.dart';
import 'package:kopdar_app/modules/app/data/authorization_token.dart';
import 'package:kopdar_app/modules/auth/signin/bloc/bloc.dart';
import 'package:kopdar_app/modules/auth/signin/bloc/event.dart';

class SignInInitiator extends CoreInitiator {
  TextEditingController _emailController;
  SignInBloc _bloc;
  SessionBloc _sessionBloc;
  GlobalKey<FormState> _formKey;
  @override
  void dispose() {
    _bloc.close();
    _emailController.dispose();
  }

  @override
  void init() {
    _bloc = SignInBloc();
    _sessionBloc = SessionBloc();
    _emailController = TextEditingController();
    _formKey = GlobalKey<FormState>();
  }

  TextEditingController get geEmailtController => _emailController;
  SignInBloc get getBloc => _bloc;
  GlobalKey<FormState> get getFormKey => _formKey;

  void onPressLogin() {
    String email = _emailController.text;
    _bloc.add(SetSignIn(email: email));
  }

  void onLoginSuccess(AuthorizationToken token) {
    _sessionBloc.add(InitiateToken(token: token));
  }
}
