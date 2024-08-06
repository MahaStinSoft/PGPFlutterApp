import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:flutterapp/LocaleProvider%20.dart'; // Adjust import as necessary
import 'package:flutterapp/colors.dart';
import 'package:flutterapp/styles.dart';
import 'package:flutterapp/widgets/common/custom_textformfield.dart';
import 'package:flutterapp/widgets/home.dart';
import 'package:flutterapp/widgets/signup.dart';
import 'package:flutterapp/generated/l10n.dart';

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
      _emailErrorText =
          _emailController.text.isEmpty ? S.of(context).emailRequired : null;
      _passwordErrorText = _passwordController.text.isEmpty
          ? S.of(context).passwordRequired
          : null;
    });
  }

  void _resetValidationErrors() {
    setState(() {
      _emailErrorText = null;
      _passwordErrorText = null;
    });
  }

  void _submit() {
    _validateFields();

    if (_emailErrorText == null && _passwordErrorText == null) {
      // Proceed with login logic if no validation errors
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                CustomTextFormField(
                                  controller: _emailController,
                                  hintText: 'example@gmail.com',
                                  labelText: S.of(context).yourEmail,
                                  errorText: _emailErrorText,
                                  onChanged: (value) => _validateFields(),
                                ),
                                const SizedBox(height: 10),
                                CustomTextFormField(
                                  controller: _passwordController,
                                  hintText: '********',
                                  labelText: S.of(context).password,
                                  errorText: _passwordErrorText,
                                  obscureText: !_passwordVisible,
                                  showToggleIcon: true,
                                  togglePasswordVisibility: () {
                                    setState(() {
                                      _passwordVisible = !_passwordVisible;
                                    });
                                  },
                                  onChanged: (value) => _validateFields(),
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
                          const SizedBox(height: 30),
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
                                      _resetValidationErrors();
                                    });
                                  },
                                  child: Text(
                                    'English',
                                    style: AppTextStyles.labelStyle.copyWith(
                                      color: isEnglishSelected
                                          ? AppColors.primaryColor
                                          : AppColors.textDarkColor,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  "|",
                                  style: AppTextStyles.labelStyle.copyWith(
                                    color: AppColors.textDarkColor,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                InkWell(
                                  onTap: () {
                                    Provider.of<LocaleProvider>(context,
                                            listen: false)
                                        .setLocale(const Locale('ta'));
                                    setState(() {
                                      isEnglishSelected = false;
                                      _resetValidationErrors();
                                    });
                                  },
                                  child: Text(
                                    'தமிழ்',
                                    style: AppTextStyles.labelStyle.copyWith(
                                      color: !isEnglishSelected
                                          ? AppColors.primaryColor
                                          : AppColors.textDarkColor,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: S.of(context).dontHaveAccount,
                            style: AppTextStyles.labelStyle,
                          ),
                          TextSpan(
                            text: ' ${S.of(context).signUp}',
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
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
