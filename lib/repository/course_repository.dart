import 'package:edtechapp/model/course.dart';

abstract class CourseRepository {
  /// Returns a list of courses that match the query and categories
  /// Empty categories means all categories
  Future<List<Course>> searchCourses(String query, Set<String> categories);
  Future<bool> isCoursePurchased(String courseId);
}
