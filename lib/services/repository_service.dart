import 'package:dartz/dartz.dart';
import '../exception/app_exception.dart';
import '../model/course.dart';
import '../model/credit_card.dart';

abstract class RepositoryService {
  Future<List<Course>> getCourse();

  Future<List<Course>> searchCourse(String searchCourse);

  Future<List<Course>> categoryCourse(String categoryCourse);

  Future<List<Course>> addCourse();

  Future<Either<AppException, None>> addCourseToCart(String courseId);

  Future<Either<AppException, bool>> isCourseCart(String courseId);

  Future<List<Course>> getUserCourses();

  Future<Either<AppException, None>> buyCourse(String? courseId);

  Future<List<CreditCard>> getCreditCard();

  Future<Either<AppException, None>> addCreditCard(String name, String cardNumber, String expireDate, String cvv, String paymentMethod);
}
