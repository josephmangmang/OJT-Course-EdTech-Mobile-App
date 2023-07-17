import '../model/course.dart';

abstract class SharedService {
  Future<void> setCourse(String key, Course course);

  Future<Course> getCourse(String key);
}
