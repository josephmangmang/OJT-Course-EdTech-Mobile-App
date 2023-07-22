import 'package:dartz/dartz.dart';
import 'package:edtechapp/services/repository_service.dart';
import 'package:edtechapp/ui/common/app_exception_constants.dart';
import 'package:edtechapp/ui/common/app_strings.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../app/app.locator.dart';
import '../exception/app_exception.dart';
import '../model/course.dart';
import '../model/credit_card.dart';
import '../ui/common/firebase_constants.dart';
import 'authentication_service.dart';

class RepositoryImplService extends RepositoryService {
  final auth0 = FirebaseAuth.instance;
  final db = FirebaseFirestore.instance;
  final userName = FirebaseAuth.instance.currentUser!;
  final _authenticationService = locator<AuthenticationService>();

  @override
  Future<List<Course>> getCourse() async {
    List<Course> listOfCourse = [];

    try {
      await db.collection(FirebaseConstants.courseCollection).get().then((value) {
        if (value.docs.isNotEmpty) {
          var snapshots = value.docs;

          listOfCourse =
              snapshots.map((e) => Course.fromJson(e.data())).toList();
        }
      });
    } catch (e) {
      print(e.toString());
    }
    return listOfCourse;
  }

  @override
  Future<List<Course>> searchCourse(String searchCourse) async {
    List<Course> listOfCourse = [];

    if (searchCourse.isEmpty) {
      try {
        await db.collection(FirebaseConstants.courseCollection).get().then((value) {
          if (value.docs.isNotEmpty) {
            var snapshots = value.docs;
            listOfCourse =
                snapshots.map((e) => Course.fromJson(e.data())).toList();
          }
        });
      } catch (e) {
        print(e.toString());
      }
      return listOfCourse;
    } else {
      try {
        await db
            .collection(FirebaseConstants.courseCollection)
            .where(FirebaseConstants.keywords, arrayContains: searchCourse.toLowerCase())
            .get()
            .then((value) {
          if (value.docs.isNotEmpty) {
            var snapshots = value.docs;
            listOfCourse =
                snapshots.map((e) => Course.fromJson(e.data())).toList();
          }
        });
      } catch (e) {
        print(e.toString());
      }
      return listOfCourse;
    }
  }

  @override
  Future<List<Course>> categoryCourse(String categoryCourse) async {
    List<Course> listOfCourse = [];

    try {
      await db
          .collection(FirebaseConstants.courseCollection)
          .where(FirebaseConstants.category, isEqualTo: categoryCourse)
          .get()
          .then((value) {
        if (value.docs.isNotEmpty) {
          var snapshots = value.docs;
          listOfCourse =
              snapshots.map((e) => Course.fromJson(e.data())).toList();
        }
      });
    } catch (e) {
      print(e.toString());
    }
    return listOfCourse;
  }

  @override
  Future<List<Course>> addCourse() async {
    List<Course> listOfCourse = [];

    try {
      await db
          .collection(FirebaseConstants.courseCollection)
          .where(FirebaseConstants.id, isEqualTo: itemId)
          .get()
          .then((value) {
        if (value.docs.isNotEmpty) {
          var snapshots = value.docs;
          listOfCourse =
              snapshots.map((e) => Course.fromJson(e.data())).toList();
        }
      });
    } catch (e) {
      print(e.toString());
    }
    return listOfCourse;
  }

  @override
  Future<Either<AppException, None>> buyCourse(String? courseId) async {
    if (courseId == null) {
      return Left(InvalidInputException(AppExceptionConstants.courseIdNull));
    }

    final user = await _authenticationService.getCurrentUser();

    return user.fold((error) {
      return Left(error);
    }, (user) async {
      try {
        await db
            .collection(FirebaseConstants.courseCollection)
            .doc(user.uid)
            .update({
          FirebaseConstants.purchaseCourses: FieldValue.arrayUnion([courseId]),
        });
      } on FirebaseAuthException catch (e) {
        return Left(AppException(e.message.toString()));
      }
      return const Right(None());
    });
  }

  @override
  Future<List<Course>> getUserCourses() async {
    final user = await _authenticationService.getCurrentUser();

    return user.foldRight([], (user, previous) async {
      final purchaseCourses = user.purchaseCourses;
      if (purchaseCourses.isEmpty) return [];

      final results = await db
          .collection(FirebaseConstants.courseCollection)
          .where(
            FirebaseConstants.id,
            whereIn: purchaseCourses.toList(),
          )
          .get();

      return results.docs.map((doc) => Course.fromJson(doc.data())).toList();
    });
  }

  @override
  Future<Either<AppException, None>> addCreditCard(String name, String cardNumber, String expireDate, String cvv, String paymentMethod) async {
    final user = await _authenticationService.getCurrentUser();

    CreditCard creditCard = CreditCard(name: name, cardNumber: cardNumber, expireDate: expireDate, cvv: cvv, paymentMethod: paymentMethod);

    return user.fold((error) {
      return Left(error);
    }, (user) async {
      try {
        final CollectionReference creditCardCollection = await db
            .collection(FirebaseConstants.userCollection)
            .doc(user.uid).collection('creditCardDetails');

        final QuerySnapshot existingCreditCardSnapshot = await creditCardCollection.get();

        if (existingCreditCardSnapshot.docs.isNotEmpty) {
          for (DocumentSnapshot doc in existingCreditCardSnapshot.docs) {
            await doc.reference.delete();
          }
        }

        await creditCardCollection.add(creditCard.toJson());
      } on FirebaseAuthException catch (e) {
        return Left(AppException(e.message.toString()));
      }
      return const Right(None());
    });
    }
  }

