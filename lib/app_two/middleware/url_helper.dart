class UrlHelper {
  static const String baseUrl = 'http://localhost:3000/api';

  static String getLoginUrl() {
    return '$baseUrl/auth/login';
  }

  static String getRegisterUrl() {
    return '$baseUrl/auth/register';
  }
}
