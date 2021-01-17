import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  final Function onPressedLogin;
  final TextEditingController emailController;
  final GlobalKey<FormState> singInFormKey;
  final bool isLoading;

  const SignInView(
      {Key key,
      @required this.onPressedLogin,
      @required this.emailController,
      @required this.singInFormKey,
      @required this.isLoading})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        SingleChildScrollView(
            child: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Flexible(
                    flex: deviceSize.width > 600 ? 2 : 1,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 8.0,
                      child: Container(
                          height: 260,
                          constraints: BoxConstraints(minHeight: 260),
                          width: deviceSize.width * 0.75,
                          padding: EdgeInsets.all(16.0),
                          child: Form(
                              key: singInFormKey,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    TextFormField(
                                      controller: emailController,
                                      decoration: InputDecoration(
                                          labelText: 'Masukan Email'),
                                      keyboardType: TextInputType.emailAddress,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    if (isLoading)
                                      CircularProgressIndicator()
                                    else
                                      RaisedButton(
                                        child: Text('Sign In'),
                                        onPressed: this.onPressedLogin,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 30.0, vertical: 8.0),
                                        color: Theme.of(context).primaryColor,
                                        textColor: Theme.of(context)
                                            .primaryTextTheme
                                            .button
                                            .color,
                                      ),
                                  ],
                                ),
                              ))),
                    ))
              ]),
        ))
      ]),
    );
  }
}
