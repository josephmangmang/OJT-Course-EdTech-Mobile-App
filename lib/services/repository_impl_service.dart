import 'package:edtechapp/services/repository_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RepositoryImplService extends RepositoryService{
  @override
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
