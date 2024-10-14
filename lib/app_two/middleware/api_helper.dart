import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> login(String email, String password) async {
  final url = Uri.parse('http://localhost:3000/api/auth/login');
  final response = await http.post(
    url,
    headers: {'Content-Type': 'application/json'},
    body: json.encode({'email': email, 'password': password}),
  );

  if (response.statusCode == 200) {
    final responseData = json.decode(response.body);
    String token = responseData['token'];
    String userId = responseData['userId'];
    print('Login successful: $token');
  } else {
    print('Login failed: ${response.body}');
  }
}
