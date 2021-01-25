import 'package:equatable/equatable.dart';

abstract class SearchUserEvent extends Equatable {
  SearchUserEvent([mProps = const []]) : this._mProps = mProps;
  final List _mProps;
  @override
  List<Object> get props => this._mProps;
}

class SetSearchUser extends SearchUserEvent {
  final String query;
  SetSearchUser({this.query}) : super([query]);
}
