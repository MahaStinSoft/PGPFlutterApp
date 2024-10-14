class UrlHelper {
  static const String baseUrl =
      'http://localhost:3000/api'; // Ensure this is correct

  // Method to get the login URL
  static String getLoginUrl() {
    return '$baseUrl/auth/login'; // This should resolve to the correct URL
  }

  // Method to get the registration URL
  static String getRegisterUrl() {
    return '$baseUrl/auth/register';
  }
}
