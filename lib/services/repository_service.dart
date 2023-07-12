import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../model/user.dart' as user;

abstract class RepositoryService {
  Future<bool?> signup(String name, String email, String password);

  Future<user.User?>? login(String email, String password);

  Future<String?> forgetPassword(String email);

  Future<String?> currentUser(String name);
}
