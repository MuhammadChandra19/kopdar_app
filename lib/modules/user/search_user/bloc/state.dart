import 'package:equatable/equatable.dart';
import 'package:kopdar_app/core/api/v1/user/user.pbgrpc.dart';

class SearchUserState extends Equatable {
  SearchUserState([mProps = const []]) : this._mProps = mProps;
  final List _mProps;

  @override
  List<Object> get props => this._mProps;
}

class SearchUserInitial extends SearchUserState {}

class SearchUserLoading extends SearchUserState {}

class SearchUserReturn extends SearchUserState {
  final SearchResponse users;
  SearchUserReturn({this.users}) : super([users]);
}

class SearchUserError extends SearchUserState {
  final String message;
  SearchUserError({this.message}) : super([message]);
}
