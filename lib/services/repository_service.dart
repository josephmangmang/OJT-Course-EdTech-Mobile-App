import '../model/course.dart';

abstract class RepositoryService {
  Future<List<Course>> getCourse();

  //Future<List<Category>> getCategory();
}
