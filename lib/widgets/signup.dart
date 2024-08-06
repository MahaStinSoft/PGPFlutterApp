import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/colors.dart';
import 'package:flutterapp/styles.dart';
import 'package:flutterapp/generated/l10n.dart';
import 'package:flutterapp/widgets/common/custom_textformfield.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  String? _nameError;
  String? _phoneError;
  String? _emailError;
  String? _passwordError;
  String? _confirmPasswordError;

  bool _passwordVisible = false;
  bool _confirmPasswordVisible = false;

  void _validateField(String field) {
    setState(() {
      switch (field) {
        case 'name':
          _nameError = _validateName(_nameController.text);
          break;
        case 'mobile':
          _phoneError = _validateMobile(_mobileController.text);
          break;
        case 'email':
          _emailError = _validateEmail(_emailController.text);
          break;
        case 'password':
          _passwordError = _validatePassword(_passwordController.text);
          break;
        case 'confirmPassword':
          _confirmPasswordError = _validateConfirmPassword(
            _confirmPasswordController.text,
            _passwordController.text,
          );
          break;
      }
    });
  }

  String? _validateName(String value) {
    final regex = RegExp(r'^[a-zA-Z\s]+$');
    if (value.isEmpty) {
      return S.of(context).pleaseEnterYourName;
    } else if (!regex.hasMatch(value)) {
      return S.of(context).PleaseEnterValidName;
    }
    return null;
  }

  String? _validateMobile(String value) {
    if (value.isEmpty) {
      return S.of(context).pleaseEnterYourMobileNumber;
    } else if (value.length != 10) {
      return S.of(context).pleaseEnterExactly10Digits;
    } else if (!RegExp(r'^[6-9]').hasMatch(value[0])) {
      return S.of(context).mobileNumberMustStartWith6;
    }
    return null;
  }

  String? _validateEmail(String value) {
    if (value.isEmpty) {
      return S.of(context).pleaseEnterYourEmail;
    }
    final emailRegex = RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$');
    if (!emailRegex.hasMatch(value)) {
      return S.of(context).pleaseEnterAValidEmailAddress;
    }
    return null;
  }

  String? _validatePassword(String value) {
    if (value.isEmpty) {
      return S.of(context).pleaseEnterYourPassword;
    } else if (value.length < 6) {
      return S.of(context).passwordMustBeAtLeast6Characters;
    }
    return null;
  }

  String? _validateConfirmPassword(String value, String password) {
    if (value.isEmpty) {
      return S.of(context).pleaseConfirmYourPassword;
    } else if (value != password) {
      return S.of(context).passwordsDoNotMatch;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
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
            height: MediaQuery.of(context).size.height * 0.45,
            child: Image.asset(
              'assets/vector.png',
              fit: BoxFit.fill,
            ),
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(32.0, 79.0, 32.0, 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            S.of(context).signUp,
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
                        CustomTextFormField(
                          controller: _nameController,
                          hintText: S.of(context).yourName,
                          labelText: S.of(context).yourName,
                          errorText: _nameError,
                          onChanged: (value) => _validateField('name'),
                        ),
                        const SizedBox(height: 10),
                        Text(S.of(context).mobileNo,
                            style: AppTextStyles.labelStyle),
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
                                    height: 47,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                        color: _phoneError != null
                                            ? Colors.red
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
                                              ? Colors.red
                                              : AppColors.hintTextColor,
                                        ),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: TextFormField(
                                        controller: _mobileController,
                                        decoration: InputDecoration(
                                          hintText: '9000012345',
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
                                        onChanged: (value) =>
                                            _validateField('mobile'),
                                        validator: (_) => _phoneError,
                                        style: TextStyle(fontFamily: 'Poppins'),
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
                        CustomTextFormField(
                          controller: _emailController,
                          hintText: 'example@gmail.com',
                          labelText: S.of(context).email,
                          errorText: _emailError,
                          onChanged: (value) => _validateField('email'),
                        ),
                        const SizedBox(height: 10),
                        CustomTextFormField(
                          controller: _passwordController,
                          hintText: '*********',
                          labelText: S.of(context).password,
                          errorText: _passwordError,
                          obscureText: !_passwordVisible,
                          togglePasswordVisibility: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                          showToggleIcon: true,
                          onChanged: (value) => _validateField('password'),
                        ),
                        const SizedBox(height: 10),
                        CustomTextFormField(
                          controller: _confirmPasswordController,
                          hintText: '********',
                          labelText: S.of(context).confirmPassword,
                          errorText: _confirmPasswordError,
                          obscureText: !_confirmPasswordVisible,
                          togglePasswordVisibility: () {
                            setState(() {
                              _confirmPasswordVisible =
                                  !_confirmPasswordVisible;
                            });
                          },
                          showToggleIcon: true,
                          onChanged: (value) =>
                              _validateField('confirmPassword'),
                        ),
                        const SizedBox(height: 20),
                        // Signup Button
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          width: double.infinity,
                          child: SizedBox(
                            height: 50, // Set the desired height here
                            child: ElevatedButton(
                              onPressed: _submitForm,
                              child: Text(
                                S.of(context).signUp,
                                style: AppTextStyles.defaultStyle.copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              style: AppButtonStyles.elevatedButtonStyle,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: S.of(context).alreadyHaveAnAccount + ' ',
                            style: AppTextStyles.labelStyle,
                          ),
                          TextSpan(
                            text: S.of(context).signIn,
                            style: AppTextStyles.labelStyle.copyWith(
                              color: AppColors.primaryColor,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pop(context);
                              },
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
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

  void _submitForm() {
    setState(() {
      _nameError = _validateName(_nameController.text);
      _phoneError = _validateMobile(_mobileController.text);
      _emailError = _validateEmail(_emailController.text);
      _passwordError = _validatePassword(_passwordController.text);
      _confirmPasswordError = _validateConfirmPassword(
        _confirmPasswordController.text,
        _passwordController.text,
      );
    });

    if (_nameError == null &&
        _phoneError == null &&
        _emailError == null &&
        _passwordError == null &&
        _confirmPasswordError == null) {
      // Proceed with sign-up process
      // Example: Navigator.pushNamed(context, '/home');
      print('Form Submitted');
    }
  }
}
