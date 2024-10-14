import 'package:flutter/material.dart';
import 'package:flutterapp/app_two/middleware/backend_helper.dart';

class LoginPageTwo extends StatefulWidget {
  @override
  _LoginPageTwoState createState() => _LoginPageTwoState();
}

class _LoginPageTwoState extends State<LoginPageTwo> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final BackendHelper backendHelper =
      BackendHelper(); // Create an instance of BackendHelper

  void handleLogin() {
    String email = emailController.text;
    String password = passwordController.text;

    // Call the login method from the BackendHelper
    backendHelper.login(email, password).then((_) {
      // Handle successful login, e.g., navigate to another page
    }).catchError((error) {
      // Handle login error
      print('Login error: $error');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: handleLogin,
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
