import 'package:google_sign_in/google_sign_in.dart';

class Profile {
  final String email;
  final String displayName;
  final String photoUrl;

  Profile({this.email, this.displayName, this.photoUrl});

  factory Profile.fromGoogle(GoogleSignInAccount googleUser) {
    if (googleUser == null) return null;
    return Profile(
        email: googleUser.email,
        displayName: googleUser.displayName,
        photoUrl: googleUser.photoUrl);
  }
}
