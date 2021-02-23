import 'dart:convert';

import 'package:google_sign_in/google_sign_in.dart';

class Profile {
  final String email;
  final String name;
  final String userName;
  final String photoUrl;

  Profile({
    this.email,
    this.name,
    this.userName,
    this.photoUrl,
  });

  factory Profile.fromGoogle(GoogleSignInAccount googleUser) {
    if (googleUser == null) return null;
    return Profile(
        email: googleUser.email,
        name: googleUser.displayName,
        photoUrl: googleUser.photoUrl);
  }

  Profile copyWith({
    String email,
    String name,
    String userName,
    String photoUrl,
  }) {
    return Profile(
      email: email ?? this.email,
      name: name ?? this.name,
      userName: userName ?? this.userName,
      photoUrl: photoUrl ?? this.photoUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'name': name,
      'userName': userName,
      'photoUrl': photoUrl,
    };
  }

  factory Profile.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Profile(
      email: map['email'],
      name: map['name'],
      userName: map['userName'],
      photoUrl: map['photoUrl'],
    );
  }

  factory Profile.fromJWT(Map<String, dynamic> map) {
    if (map == null) return null;
    return Profile(
      email: map['Data']['email'],
      name: map['Data']['name'],
      userName: map['Data']['userName'],
      photoUrl: map['Data']['photoUrl'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Profile.fromJson(String source) =>
      Profile.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Profile(email: $email, name: $name, userName: $userName, photoUrl: $photoUrl)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Profile &&
        o.email == email &&
        o.name == name &&
        o.userName == userName &&
        o.photoUrl == photoUrl;
  }

  @override
  int get hashCode {
    return email.hashCode ^
        name.hashCode ^
        userName.hashCode ^
        photoUrl.hashCode;
  }
}
