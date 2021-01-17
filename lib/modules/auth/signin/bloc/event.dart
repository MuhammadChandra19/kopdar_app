import 'package:equatable/equatable.dart';

abstract class SignInEvent extends Equatable {
  SignInEvent([mProps = const []]) : this._mProps = mProps;
  final List _mProps;
  @override
  List<Object> get props => this._mProps;
}

class SetSignIn extends SignInEvent {
  final String email;
  SetSignIn({this.email}) : super([email]);
}
