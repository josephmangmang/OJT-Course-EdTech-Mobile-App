import 'dart:convert';

import 'package:edtechapp/model/user.dart';
import 'package:edtechapp/services/shared_service.dart';
import 'package:edtechapp/ui/common/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/course.dart';

class ShareImplService implements SharedService {
  @override
  Future<Course> getCourse(String key) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final course = prefs.getString(AppConstants.coursePrefKey);
    return Course.fromJson(json.decode(course!));
  }

// set course to local cache
  @override
  Future<void> setCourse(String key, Course course) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(
        AppConstants.coursePrefKey, json.encode(course.toJson()));
  }
}
