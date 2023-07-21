import 'package:dartz/dartz.dart';

import '../exception/app_exception.dart';
import '../model/course.dart';

abstract class RepositoryService {
  Future<List<Course>> getCourse();

  Future<List<Course>> searchCourse(String searchCourse);

  Future<List<Course>> categoryCourse(String categoryCourse);

  Future<List<Course>> addCourse();

  Future<List<Course>> getUserCourses();

  Future<Either<AppException, None>> buyCourse(String? courseId);

  Future<Either<AppException, None>> addCreditCard(String name, String cardNumber, String expireDate, String cvv, String paymentMethod);
}
