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

      if (response['data'] != null &&
          response['data']['token'] != null &&
          response['data']['userId'] != null) {
        String token = response['data']['token'];
        String userId = response['data']['userId'];
        _apiHelper.setToken(token);
        print('Login successful: $token');
        return true;
      } else {
        print('Login failed: Invalid response structure - $response');
        return false;
      }
    } catch (error) {
      print('Login failed: $error');
      return false;
    }
  }

  Future<bool> register(
    String email,
    String password,
    String name,
    String mobile,
    String confirmPassword,
  ) async {
    final data = {
      'email': email,
      'password': password,
      'confirmPassword': confirmPassword,
      'name': name,
      'mobile': mobile,
    };

    try {
      final response = await _apiHelper.post(UrlHelper.getRegisterUrl(), data);

      if (response['statusCode'] == 201) {
        print('Registration successful: ${response['data']['message']}');
        return true;
      } else {
        print('Registration failed: ${response['data']['message']}');
        return false;
      }
    } catch (error) {
      print('Registration failed: $error');
      return false;
    }
  }
}
