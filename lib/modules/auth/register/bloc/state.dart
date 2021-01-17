import 'package:equatable/equatable.dart';
import 'package:kopdar_app/modules/app/data/authorization_token.dart';

class RegisterState extends Equatable {
  RegisterState([mProps = const []]) : this._mProps = mProps;
  final List _mProps;

  @override
  List<Object> get props => this._mProps;
}

class RegisterInitial extends RegisterState {}

class RegisterLoading extends RegisterState {}

class RegisterSuccess extends RegisterState {
  final AuthorizationToken authToken;
  RegisterSuccess({this.authToken}) : super([authToken]);
}
