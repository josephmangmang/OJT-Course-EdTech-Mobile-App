import 'dart:convert';

import 'package:edtechapp/model/user.dart';
import 'package:edtechapp/ui/common/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'shared_pref_service_service.dart';

class SharedPrefServiceServiceImpl implements SharedPrefServiceService {
  @override
  Future<void> saveUser(User user) async {
    final pref = await SharedPreferences.getInstance();
    pref.setString(AppConstants.userPrefKey, jsonEncode(user.toJson()));
  }

  @override
  Future<User?> getCurrentUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final user = prefs.getString(AppConstants.userPrefKey);

    if (user == null) return null;

    return User.fromJson(json.decode(user));
  }
}
