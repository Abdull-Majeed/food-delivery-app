import 'package:firebase_auth/firebase_auth.dart';
import 'package:food_delivery/auth_services/toast_msg.dart';

class FirebaseAuthServices {
  //get instance of firebase auth
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  get loginMethod => null;

  //get current user
  User? getCurrentUser() {
    return _firebaseAuth.currentUser;
  }

  //sign in
  Future<User?> signInWIthEmailAndPassword(
      String email, String password) async {
    //when user try to sign in
    try {
      UserCredential credential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);

      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        showToast(message: "Invalid email or password");
      }
    }
    return null;
  }

  //sing up
  Future<User?> signUpWIthEmailAndPassword(
    String email,
    password,
    confirmPass,
  ) async {
    //when user try to sign in
    try {
      UserCredential credential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        showToast(message: "This email is already in use");
      }
    }
    return null;
  }

  //sign out

  Future<void> signOut() async {
    return await _firebaseAuth.signOut();
  }

  signInWithCredential(AuthCredential credential) {}
}
