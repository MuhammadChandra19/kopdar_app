import 'package:equatable/equatable.dart';

class UserProfileState extends Equatable {
  UserProfileState([mProps = const []]) : this._mProps = mProps;
  final List _mProps;

  @override
  List<Object> get props => this._mProps;
}

class UserProfileInitial extends UserProfileState {}

class UserProfileLoading extends UserProfileState {}

class UserProfileSaved extends UserProfileState {}
