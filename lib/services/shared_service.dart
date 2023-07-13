import '../model/course.dart';
import '../model/user.dart';

abstract class SharedService {
  Future<void> setUser(String key, User user);

  Future<User> getUser(String key);

  Future<void> setCourse(String key, Course course);

  Future<Course> getCourse(String key);
}
