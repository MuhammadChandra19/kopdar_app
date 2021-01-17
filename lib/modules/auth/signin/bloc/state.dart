import 'package:equatable/equatable.dart';
import 'package:kopdar_app/modules/app/data/authorization_token.dart';

class SignInState extends Equatable {
  SignInState([mProps = const []]) : this._mProps = mProps;
  final List _mProps;

  @override
  List<Object> get props => this._mProps;
}

class SignInInitial extends SignInState {}

class SignInLoading extends SignInState {}

class SignInSuccess extends SignInState {
  final AuthorizationToken authToken;
  SignInSuccess({this.authToken}) : super([authToken]);
}
