

abstract class RepositoryService {
  Future<bool?> signup(String name, String email, String password);

  Future<bool?> login(String email, String password);

  Future<bool?> forgetPassword(String email);
}
