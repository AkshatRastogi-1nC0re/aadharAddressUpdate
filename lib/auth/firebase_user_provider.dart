import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class AadharFirebaseUser {
  AadharFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

AadharFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<AadharFirebaseUser> aadharFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<AadharFirebaseUser>((user) => currentUser = AadharFirebaseUser(user));
