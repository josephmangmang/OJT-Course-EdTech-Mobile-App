import 'dart:ffi';

import 'package:dartz/dartz.dart';

import '../exception/app_exception.dart';
import '../model/course.dart';
import '../model/credit_card.dart';

abstract class RepositoryService {
  Future<List<Course>> getCourse();


  Future<List<Course>> getUserCourses();

  Future<Either<AppException, None>> buyCourse(String courseId);

  Future<List<CreditCard>> getCreditCard();

  Future<Either<AppException, None>> addCreditCard(String name,
      String cardNumber, String expireDate, String cvv, String paymentMethod);

  Future<Either<AppException, None>> updateName(
      String currentName, String newName);

  Future<Either<AppException, None>> editCreditCard(
      String name,
      String cardNumber,
      String expireDate,
      String cvv,
      String paymentMethod,
      String cardId);

  Future<Either<AppException, None>> deleteCreditCard(String uid);
}
