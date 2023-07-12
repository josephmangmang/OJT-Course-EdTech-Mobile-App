import 'package:edtechapp/services/repository_service.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/user.dart';

class RepositoryImplService extends RepositoryService {
  final auth0 = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;
  final userName = FirebaseAuth.instance.currentUser!;

  @override
  Future<bool?> signup(String name, String email, String password) async {
    final auth0 = FirebaseAuth.instance;
    final db = FirebaseFirestore.instance;
    try {
      UserCredential userCredential =
          await auth0.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      User user = User(name: name, email: email, uid: userCredential.user!.uid);

      db.collection('users').doc(userCredential.user?.uid).set(user.toJson());

      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists');
      }
      return false;
    } catch (error) {
      // Signup failed, handle error
      print("Error: ${error.toString()}");
      return null;
    }
  }

  @override
  Future<User>? login(String email, String password) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = credential.user?.uid;
      final snap =
          await FirebaseFirestore.instance.collection('users').doc(user).get();
      return User.fromJson(snap.data() as Map<String, dynamic>);
    } on FirebaseAuthException catch (e) {
      String error = e.message.toString();
      rethrow;
    }
  }

  @override
  Future<String?> forgetPassword(String email) async {
    String result;
    try {
      await auth0.sendPasswordResetEmail(email: email);
      result = "Password reset link sent! Check your email";
      return result.toString();
    } on FirebaseAuthException catch (e) {
      return e.message.toString();
    }
  }

  @override
  Future<String?> currentUser(String name) async {
    String nameValue;
    String error;
    db.collection("users").where("name", isEqualTo: name).get().then(
        (QuerySnapshot) {
      print("Successfully completed");
      for (var docSnapshot in QuerySnapshot.docs) {
        print('${docSnapshot.id} => ${docSnapshot.data()}');
        return name;
      }
    }, onError: (e) {
      error = '$e';
      return error.toString();
    });
  }
}
