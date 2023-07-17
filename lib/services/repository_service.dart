import 'package:dartz/dartz.dart';

import '../exception/app_exception.dart';
import '../model/course.dart';

abstract class RepositoryService {
  Future<List<Course>> getCourse();

  Future<List<Course>> searchCourse(String searchCourse);

  Future<List<Course>> categoryCourse(String categoryCourse);

  Future<List<Course>> addCourse();

   Future<List<Course>> yourCourse();

   Future<String?> buyCourse(
      String courseId);
       
}
