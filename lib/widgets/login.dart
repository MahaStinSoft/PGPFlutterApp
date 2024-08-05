import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/LocaleProvider%20.dart';
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
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.4,
            child: Image.asset(
              'assets/vector.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 74,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/logo.png',
                height: 130,
                width: 115,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.28 + 36 / 2,
            left: 0,
            right: 0,
            bottom: 0,
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Text(
                        S.of(context).welcomeBack,
                        style: AppTextStyles.headerStyle,
                      ),
                    ),
                    const SizedBox(height: 3),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Text(
                        S.of(context).loginGrievance,
                        style: AppTextStyles.defaultStyle.copyWith(
                          color: AppColors.iconsColor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Text(
                        S.of(context).yourEmail,
                        style: AppTextStyles.titleStyle,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: TextFormField(
                        controller: _emailController,
                        decoration: AppInputDecorations.textFieldDecoration(
                          hintText: S.of(context).yourEmail,
                        ),
                        style: TextStyle(fontFamily: 'Poppins'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return S.of(context).emailRequired;
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: Text(
                        S.of(context).password,
                        style: AppTextStyles.titleStyle,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32.0),
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: AppInputDecorations.textFieldDecoration(
                          hintText: S.of(context).password,
                        ),
                        style: TextStyle(fontFamily: 'Poppins'),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return S.of(context).passwordRequired;
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 2),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32.0),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            S.of(context).forgotPassword,
                            style: AppTextStyles.defaultStyle.copyWith(
                              fontWeight: FontWeight.w600,
                              color: AppButtonStyles
                                  .elevatedButtonStyle.backgroundColor
                                  ?.resolve({}),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32.0),
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState?.validate() ?? false) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomePage(),
                                  ),
                                );
                              }
                            },
                            child: Text(
                              S.of(context).login,
                              style: AppTextStyles.defaultStyle.copyWith(
                                color: AppColors.textLightColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            style: AppButtonStyles.elevatedButtonStyle,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Provider.of<LocaleProvider>(context,
                                      listen: false)
                                  .setLocale(Locale('en'));
                              setState(() {
                                isEnglishSelected = true;
                              });
                            },
                            child: Text(
                              // S.of(context).english,
                              'English',
                              style: AppTextStyles.defaultStyle.copyWith(
                                  color: isEnglishSelected
                                      ? AppColors.primaryColor
                                      : AppColors.textDarkColor,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Text(
                            "|",
                            style: AppTextStyles.defaultStyle.copyWith(
                              color: AppColors.textDarkColor,
                            ),
                          ),
                          const SizedBox(width: 16),
                          InkWell(
                            onTap: () {
                              Provider.of<LocaleProvider>(context,
                                      listen: false)
                                  .setLocale(Locale('ta'));
                              setState(() {
                                isEnglishSelected = false;
                              });
                            },
                            child: Text(
                              S.of(context).tamil,
                              style: AppTextStyles.defaultStyle.copyWith(
                                  color: !isEnglishSelected
                                      ? AppColors.primaryColor
                                      : AppColors.textDarkColor,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 60),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: RichText(
                          text: TextSpan(
                            text: S.of(context).dontHaveAccount,
                            style: AppTextStyles.defaultStyle
                                .copyWith(fontWeight: FontWeight.w600),
                            children: [
                              TextSpan(
                                text: S.of(context).signUp,
                                style: AppTextStyles.defaultStyle.copyWith(
                                  color: AppButtonStyles
                                      .elevatedButtonStyle.backgroundColor
                                      ?.resolve({}),
                                  fontWeight: FontWeight.bold,
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
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
