import 'api_helper.dart';
import 'url_helper.dart';

class BackendHelper {
  final ApiHelper _apiHelper = ApiHelper();

  Future<bool> login(String email, String password) async {
    final data = {
      'email': email,
      'password': password,
    };

    try {
      final response = await _apiHelper.post(UrlHelper.getLoginUrl(), data);
      String token = response['token'];
      String userId = response['userId'];
      _apiHelper.setToken(token);
      print('Login successful: $token');
      return true;
    } catch (error) {
      print('Login failed: $error');
      return false;
    }
  }

  Future<void> register(String email, String password, String name) async {
    final data = {
      'email': email,
      'password': password,
      'name': name,
    };
    try {
      final response = await _apiHelper.post(UrlHelper.getRegisterUrl(), data);
      print('Registration successful: ${response['message']}');
    } catch (error) {
      print('Registration failed: $error');
    }
  }
}
