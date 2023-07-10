import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class RepositoryService {
  Future<bool?> signup(String name, String email, String password);

  Future<bool?> login(String email, String password);
}
