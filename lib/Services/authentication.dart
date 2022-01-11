import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationController {
  static final startInstance = FirebaseAuth.instance;

  Stream<User?> get userCheck =>
      AuthenticationController.startInstance.authStateChanges();

  List<String> errorList = [];

  Future logUser(String email, String password) async {
    try {
      UserCredential user = await startInstance.signInWithEmailAndPassword(
          email: email, password: password);
      if (user.user == null) {
        return null;
      } else {
        return user.user;
      }
    } catch (error) {
      errorList.add(error.toString());
    }
  }

  Future registerUser(String email, String password) async {
    try {
      UserCredential user = await startInstance.createUserWithEmailAndPassword(
          email: email, password: password);
      if (user.user == null) {
        return null;
      } else {
        return user.user;
      }
    } catch (error) {
      errorList.add(error.toString());
    }
  }

  Future signOut() async {
    try {
      startInstance.signOut();
    } catch (error) {
      errorList.add(error.toString());
    }
  }
}
