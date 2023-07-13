import '../model/course.dart';

abstract class RepositoryService {
  Future<List<Course>> getCourse([String? searchCourse]);
}
