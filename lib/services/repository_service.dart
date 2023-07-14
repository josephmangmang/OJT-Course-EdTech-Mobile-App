import '../model/course.dart';

abstract class RepositoryService {
  Future<List<Course>> getCourse();

  Future<List<Course>> searchCourse(String searchCourse);

  Future<List<Course>> categoryCourse(String categoryCourse);
}
