import 'package:edtechapp/services/repository_service.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/user.dart';

class RepositoryImplService extends RepositoryService {
  final auth0 = FirebaseAuth.instance;
    final db = FirebaseFirestore.instance;
  @override
  Future<bool?> signup(String name, String email, String password) async {
    
    try {
      UserCredential userCredential =
          await auth0.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      User user = User(name, email, userCredential.user!.uid);

      db.collection('users').doc(userCredential.user?.uid).set(
        {
          'name': name,
          'email': email,
          'uid': userCredential.user?.uid,
        },
      );
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
  Future<bool?> login(String email, String password) async {
    try {
      final credential = await auth0.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = credential.user?.uid;
      db.collection('users').doc(user).get().then(
        (DocumentSnapshot doc) {
          final data = doc.data() as Map<String, dynamic>;
        },
      );
      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong password') {
        print('Wrong password provided for that user');
      }
      return false;
    } catch (e) {
      print("Error: ${e.toString()}");
      return null;
    }
  }
}
