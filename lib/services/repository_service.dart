import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RepositoryService {
  Future<bool?> signup(String email, String password) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return true;
    } catch (error) {
      // Signup failed, handle error
      print("Error: ${error.toString()}");
      return null;
    }
  }

  
}