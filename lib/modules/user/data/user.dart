import 'dart:convert';
import 'dart:typed_data';

class UserData {
  final String userId;
  final String username;
  final Uint8List photoUrl;

  UserData({
    this.userId,
    this.username,
    this.photoUrl,
  });

  UserData copyWith({
    String userId,
    String username,
    Uint8List photoUrl,
  }) {
    return UserData(
      userId: userId ?? this.userId,
      username: username ?? this.username,
      photoUrl: photoUrl ?? this.photoUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'user_id': userId,
      'username': username,
      'photo_url': photoUrl,
    };
  }

  factory UserData.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return UserData(
      userId: map['ususer_iderId'],
      username: map['username'],
      photoUrl: map['photo_url'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserData.fromJson(String source) =>
      UserData.fromMap(json.decode(source));

  @override
  String toString() =>
      'UserData(userId: $userId, username: $username, photoUrl: $photoUrl)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is UserData &&
        o.userId == userId &&
        o.username == username &&
        o.photoUrl == photoUrl;
  }

  @override
  int get hashCode => userId.hashCode ^ username.hashCode ^ photoUrl.hashCode;
}
