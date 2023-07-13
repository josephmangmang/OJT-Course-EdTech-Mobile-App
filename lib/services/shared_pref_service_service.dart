import 'package:edtechapp/model/user.dart';

abstract interface class SharedPrefServiceService {
  Future<void> saveUser(User user);
}
