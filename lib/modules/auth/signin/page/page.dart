import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:kopdar_app/modules/app/page/page.dart';
import 'package:kopdar_app/modules/auth/auth_module.dart';
import 'package:kopdar_app/modules/auth/signin/bloc/state.dart';
import 'package:kopdar_app/modules/auth/signin/page/initiator.dart';
import 'package:kopdar_app/modules/auth/signin/page/view.dart';
// import 'package:kopdar_app/utils/helper/route/route_helper.dart';

class SignInPage extends StatefulWidget {
  static const BRANCH_PATH = '/sign-in';
  static const ROUTE_NAME = 'SignIn';
  static const PATH = AuthModule.PATH + BRANCH_PATH;
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  SignInInitiator _i;
  @override
  void initState() {
    _i = SignInInitiator();
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
        if (state is SignInSuccess) {
          _i.onLoginSuccess(state.authToken);
        }
      },
      child: BlocBuilder(
          bloc: _i.getBloc,
          builder: (context, state) => SignInView(
                emailController: _i.geEmailtController,
                isLoading: (state is SignInLoading) ?? false,
                onPressedLogin: _i.onPressLogin,
                singInFormKey: _i.getFormKey,
              )),
    );
  }
}
