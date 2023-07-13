import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../model/course.dart';
import '../model/user.dart' as user;
import '../model/course.dart' as course;

abstract class RepositoryService {
  Future<bool?> signup(String name, String email, String password);

  Future<user.User?>? login(String email, String password);

  Future<String?> forgetPassword(String email);

  Future<List<Course>> getCourse();
}
