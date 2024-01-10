import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';

class AuthServices {
  User? checkCurrentUser() {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      Logger().i(user.displayName);
    } else {
      Logger().w("FireBase USer = NULL");
    }
    return user;
  }
}
