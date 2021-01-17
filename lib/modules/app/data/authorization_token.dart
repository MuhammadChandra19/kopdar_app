class AuthorizationToken {
  String authToken;

  AuthorizationToken({
    this.authToken,
  });

  AuthorizationToken.fromJson(Map<String, dynamic> json) {
    authToken = json['token'];
  }

  static AuthorizationToken initial() {
    return AuthorizationToken(authToken: '');
  }
}
