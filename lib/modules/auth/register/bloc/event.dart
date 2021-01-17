import 'package:equatable/equatable.dart';
import 'package:kopdar_app/modules/auth/register/data/user_register.dart';

abstract class RegisterEvent extends Equatable {
  RegisterEvent([mProps = const []]) : this._mProps = mProps;
  final List _mProps;
  @override
  List<Object> get props => this._mProps;
}

class SetRegister extends RegisterEvent {
  final UserRegister register;
  SetRegister({this.register}) : super([register]);
}
