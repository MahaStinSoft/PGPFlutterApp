import 'package:flutter/foundation.dart' show kIsWeb;

class UrlHelper {
  static const String _baseUrlWeb = 'http://localhost:3000/api';
  static const String _baseUrlMobile = 'http://192.168.0.161:3000/api';

  static String get baseUrl {
    return kIsWeb ? _baseUrlWeb : _baseUrlMobile;
  }

  static String getLoginUrl() {
    return '$baseUrl/auth/login';
  }

  static String getRegisterUrl() {
    return '$baseUrl/auth/register';
  }
}
