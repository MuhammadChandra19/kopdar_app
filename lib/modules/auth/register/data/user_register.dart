import 'package:flutter/material.dart';

class UserRegister {
  final String name;
  final String email;

  UserRegister({@required this.email, @required this.name});

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
    };
  }
}
