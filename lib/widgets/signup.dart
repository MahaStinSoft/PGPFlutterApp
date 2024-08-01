import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/colors.dart';
import 'package:flutterapp/styles.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _mobileController = TextEditingController();
  String? _phoneError;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));

    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.45,
            child: Image.asset(
              'assets/vector.png',
              fit: BoxFit.cover,
            ),
          ),
          // Signup Form
          Form(
            key: _formKey,
            child: Column(
              children: [
                // Header Section with Logo
                Container(
                  padding: const EdgeInsets.fromLTRB(32.0, 79.0, 32.0, 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sign up!",
                            style: AppTextStyles.headerStyle,
                          ),
                          const SizedBox(height: 40),
                        ],
                      ),
                      Image.asset(
                        'assets/logo.png',
                        height: 100,
                        width: 100,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Name Field
                        Text("Your Name", style: AppTextStyles.titleStyle),
                        const SizedBox(height: 8),
                        TextFormField(
                          decoration: AppInputDecorations.textFieldDecoration(
                            hintText: "your name",
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp('[a-zA-Z]')),
                          ],
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your name';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 10),
                        // Mobile No Field
                        Text("Mobile No", style: AppTextStyles.titleStyle),
                        const SizedBox(height: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 50,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 60,
                                    height: 48,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: _phoneError != null
                                            ? const Color.fromARGB(
                                                255, 184, 19, 7)
                                            : AppColors.hintTextColor,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "+91",
                                        hintStyle: AppTextStyles.textInputStyle
                                            .copyWith(
                                                color: AppColors.hintTextColor),
                                        border: InputBorder.none,
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                vertical: 12.0),
                                      ),
                                      keyboardType: TextInputType.number,
                                      textAlign: TextAlign.center,
                                      readOnly: true,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Container(
                                      height: 48,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                          color: _phoneError != null
                                              ? const Color.fromARGB(
                                                  255, 184, 19, 7)
                                              : AppColors.hintTextColor,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: TextFormField(
                                        controller: _mobileController,
                                        decoration: InputDecoration(
                                          hintText: "9000012345",
                                          hintStyle: AppTextStyles
                                              .textInputStyle
                                              .copyWith(
                                                  color:
                                                      AppColors.hintTextColor),
                                          border: InputBorder.none,
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 12.0),
                                        ),
                                        keyboardType: TextInputType.phone,
                                        inputFormatters: [
                                          FilteringTextInputFormatter
                                              .digitsOnly,
                                        ],
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            setState(() {
                                              _phoneError =
                                                  'Please enter your mobile number';
                                            });
                                            return null;
                                          } else if (value.length != 10) {
                                            setState(() {
                                              _phoneError =
                                                  'Please enter exactly 10 digits';
                                            });
                                            return null;
                                          }
                                          setState(() {
                                            _phoneError =
                                                null; // Clear error if valid
                                          });
                                          return null;
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            if (_phoneError != null)
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    10.0, 8.0, 0.0, 0.0),
                                child: Text(
                                  _phoneError!,
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 184, 19, 7),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        // Email Field
                        Text("Your Email", style: AppTextStyles.titleStyle),
                        const SizedBox(height: 8),
                        TextFormField(
                          decoration: AppInputDecorations.textFieldDecoration(
                            hintText: "example@gmail.com",
                          ),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            final emailRegex =
                                RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$');
                            if (!emailRegex.hasMatch(value)) {
                              return 'Please enter a valid email address';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 10),
                        // Password Field
                        Text("Password", style: AppTextStyles.titleStyle),
                        const SizedBox(height: 8),
                        TextFormField(
                          obscureText: true,
                          decoration: AppInputDecorations.textFieldDecoration(
                            hintText: "**********",
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 10),
                        // Confirm Password Field
                        Text("Confirm Password",
                            style: AppTextStyles.titleStyle),
                        const SizedBox(height: 8),
                        TextFormField(
                          obscureText: true,
                          decoration: AppInputDecorations.textFieldDecoration(
                            hintText: "**********",
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please confirm your password';
                            }
                            // Optionally, add additional validation to match passwords
                            return null;
                          },
                        ),
                        const SizedBox(height: 20),
                        // Signup Button
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState?.validate() ?? false) {
                                // Perform signup action
                              }
                            },
                            child: Text(
                              "Sign Up",
                              style: AppTextStyles.defaultStyle.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            style: AppButtonStyles.elevatedButtonStyle,
                          ),
                        ),
                        const SizedBox(height: 40),
                        // Already have an account Text
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: RichText(
                              text: TextSpan(
                                text: "Already have an account? ",
                                style: AppTextStyles.defaultStyle
                                    .copyWith(fontWeight: FontWeight.w600),
                                children: [
                                  TextSpan(
                                    text: "Login",
                                    style: AppTextStyles.defaultStyle.copyWith(
                                      color: AppButtonStyles
                                          .elevatedButtonStyle.backgroundColor
                                          ?.resolve({}),
                                      fontWeight: FontWeight.bold,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.pop(context);
                                      },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
