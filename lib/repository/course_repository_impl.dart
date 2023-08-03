
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edtechapp/app/app.locator.dart';
import 'package:edtechapp/model/course.dart';
import 'package:edtechapp/services/authentication_service.dart';
import '../ui/common/firebase_constants.dart';
import 'course_repository.dart';

class CourseRepositoryImpl implements CourseRepository {
  final db = FirebaseFirestore.instance;
  final _authenticationService = locator<AuthenticationService>();

  @override
  Future<List<Course>> searchCourses(
      String query, Set<String> categories) async {
    Query<Map<String, dynamic>> q =
        db.collection(FirebaseConstants.courseCollection);

    if (categories.isNotEmpty) {
      q = q.where(FirebaseConstants.category, whereIn: categories.toList());
    }

    // O(n)
    final result = await q.get().then(
        (snap) => snap.docs.map((doc) => Course.fromJson(doc.data())).toList());
    print(result);
    if (query.isNotEmpty) {
      return result
          .where((course) =>
              course.title.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    return result;
  }

  @override
  Future<bool> isCoursePurchased(String courseId) async {
    final currentUser = await _authenticationService.getCurrentUser();
    bool result = false;
    currentUser.fold((l) {
      return false;
    }, (user) async{
     for(var course in user.purchaseCourses) {
       if(course == courseId) {
         result = true;
         break;
       }
       else {
         result = false;
       }
     }
    });
    return result;
  }
}
