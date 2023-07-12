

import '../model/user.dart';

abstract class SharedService {

  Future<void> setUser (String key, User user);

  Future<User> getUser (String key);
}
