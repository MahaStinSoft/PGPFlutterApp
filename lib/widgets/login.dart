import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/LocaleProvider%20.dart'; // Adjust import as necessary
import 'package:flutterapp/colors.dart';
import 'package:flutterapp/styles.dart';
import 'package:flutterapp/widgets/home.dart';
import 'package:flutterapp/widgets/signup.dart';
import 'package:flutterapp/generated/l10n.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isEnglishSelected = true;
  bool _passwordVisible = false;
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  String? _emailErrorText;
  String? _passwordErrorText;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _validateFields() {
    setState(() {
      if (_emailController.text.isEmpty) {
        _emailErrorText = S.of(context).emailRequired;
      } else {
        _emailErrorText = null;
      }

      if (_passwordController.text.isEmpty) {
        _passwordErrorText = S.of(context).passwordRequired;
      } else {
        _passwordErrorText = null;
      }
    });
  }

  void _submit() {
    _validateFields();

    if (_formKey.currentState?.validate() ?? false) {
      // Proceed with login logic
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));

    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;

    final logoHeight = screenHeight * 0.15;
    final logoWidth = screenWidth * 0.30;
    final buttonHeight = screenHeight * 0.07;
    final buttonWidth = screenWidth * 0.80;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: screenHeight * 0.38,
            child: Image.asset(
              'assets/vector.png',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: screenHeight * 0.080,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/logo.png',
                height: logoHeight,
                width: logoWidth,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.27,
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            S.of(context).welcomeBack,
                            style: AppTextStyles.headerStyle,
                          ),
                          const SizedBox(height: 3),
                          Text(
                            S.of(context).loginGrievance,
                            style: AppTextStyles.titleStyle.copyWith(
                              color: AppColors.iconsColor,
                            ),
                          ),
                          const SizedBox(height: 50),
                          Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  S.of(context).yourEmail,
                                  style: AppTextStyles.labelStyle,
                                ),
                                const SizedBox(height: 8),
                                TextFormField(
                                  controller: _emailController,
                                  decoration: InputDecoration(
                                    hintText: 'example@gmail.com',
                                    errorText: _emailErrorText,
                                    filled: true,
                                    fillColor: AppColors.textLightColor,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 10.0),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: BorderSide(
                                        color: AppColors.hintTextColor,
                                        width: 1.0,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: BorderSide(
                                        color: AppColors.hintTextColor,
                                        width: 1.0,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: BorderSide(
                                        color: AppColors.primaryColor,
                                        width: 2.0,
                                      ),
                                    ),
                                  ),
                                  style: const TextStyle(fontFamily: 'Poppins'),
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  onChanged: (value) {
                                    _validateFields();
                                  },
                                  validator: (value) {
                                    return _emailErrorText;
                                  },
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  S.of(context).password,
                                  style: AppTextStyles.labelStyle,
                                ),
                                const SizedBox(height: 8),
                                TextFormField(
                                  controller: _passwordController,
                                  obscureText: !_passwordVisible,
                                  decoration: InputDecoration(
                                    hintText: '********',
                                    errorText: _passwordErrorText,
                                    filled: true,
                                    fillColor: AppColors.textLightColor,
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        color: AppColors.hintTextColor,
                                        _passwordVisible
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _passwordVisible = !_passwordVisible;
                                        });
                                      },
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 10.0),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: BorderSide(
                                        color: AppColors.hintTextColor,
                                        width: 1.0,
                                      ),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: BorderSide(
                                        color: AppColors.hintTextColor,
                                        width: 1.0,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                      borderSide: BorderSide(
                                        color: AppColors.hintTextColor,
                                        width: 2.0,
                                      ),
                                    ),
                                  ),
                                  style: const TextStyle(fontFamily: 'Poppins'),
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  onChanged: (value) {
                                    _validateFields();
                                  },
                                  validator: (value) {
                                    return _passwordErrorText;
                                  },
                                ),
                                const SizedBox(height: 2),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      S.of(context).forgotPassword,
                                      style: AppTextStyles.labelStyle.copyWith(
                                        color: AppButtonStyles
                                            .elevatedButtonStyle.backgroundColor
                                            ?.resolve({}),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 0),
                                SizedBox(
                                  width: buttonWidth,
                                  height: buttonHeight,
                                  child: ElevatedButton(
                                    onPressed: _submit,
                                    child: Text(
                                      S.of(context).login,
                                      style: AppTextStyles.labelStyle.copyWith(
                                        color: AppColors.textLightColor,
                                      ),
                                    ),
                                    style: AppButtonStyles.elevatedButtonStyle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // const SizedBox(height: 30),
                          // Padding(
                          //   padding: const EdgeInsets.only(bottom: 20.0),
                          //   child: RichText(
                          //     text: TextSpan(
                          //       children: [
                          //         TextSpan(
                          //           text: S.of(context).dontHaveAccount,
                          //           style: AppTextStyles.titleStyle,
                          //         ),
                          //         TextSpan(
                          //           text: S.of(context).signUp,
                          //           style: AppTextStyles.titleStyle.copyWith(
                          //             color: AppColors.primaryColor,
                          //           ),
                          //           recognizer: TapGestureRecognizer()
                          //             ..onTap = () {
                          //               Navigator.push(
                          //                 context,
                          //                 MaterialPageRoute(
                          //                   builder: (context) => SignupPage(),
                          //                 ),
                          //               );
                          //             },
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          // ),
                          const SizedBox(height: 30), // Added space here
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Provider.of<LocaleProvider>(context,
                                            listen: false)
                                        .setLocale(const Locale('en'));
                                    setState(() {
                                      isEnglishSelected = true;
                                    });
                                  },
                                  child: Text(
                                    'English',
                                    style: AppTextStyles.labelStyle.copyWith(
                                        color: isEnglishSelected
                                            ? AppColors.primaryColor
                                            : AppColors.textDarkColor,
                                        fontSize: 12),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  "|",
                                  style: AppTextStyles.labelStyle.copyWith(
                                      color: AppColors.textDarkColor,
                                      fontWeight: FontWeight.normal),
                                ),
                                const SizedBox(width: 8),
                                InkWell(
                                  onTap: () {
                                    Provider.of<LocaleProvider>(context,
                                            listen: false)
                                        .setLocale(const Locale('ta'));
                                    setState(() {
                                      isEnglishSelected = false;
                                    });
                                  },
                                  child: Text(
                                    'தமிழ்',
                                    style: AppTextStyles.labelStyle.copyWith(
                                        color: !isEnglishSelected
                                            ? AppColors.primaryColor
                                            : AppColors.textDarkColor,
                                        fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: S.of(context).dontHaveAccount,
                            style: AppTextStyles.labelStyle,
                          ),
                          TextSpan(
                            text: S.of(context).signUp,
                            style: AppTextStyles.labelStyle.copyWith(
                              color: AppColors.primaryColor,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignupPage(),
                                  ),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
