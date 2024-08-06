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
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: deviceHeight * 0.38,
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
                  padding: EdgeInsets.fromLTRB(
                      deviceWidth * 0.08,
                      deviceHeight * 0.08,
                      deviceWidth * 0.01,
                      deviceHeight * 0.02),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            S.of(context).signUp,
                            style: AppTextStyles.headerStyle.copyWith(
                              fontSize: deviceWidth * 0.06,
                            ),
                          ),
                          SizedBox(height: deviceHeight * 0.05),
                        ],
                      ),
                      Image.asset(
                        'assets/logo.png',
                        height: deviceHeight * 0.1,
                        width: deviceWidth * 0.38,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding:
                        EdgeInsets.symmetric(horizontal: deviceWidth * 0.08),
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
                        SizedBox(height: deviceHeight * 0.02),
                        Text(S.of(context).mobileNo,
                            style: AppTextStyles.labelStyle.copyWith(
                              fontSize: deviceWidth * 0.04,
                            )),
                        SizedBox(height: deviceHeight * 0.01),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: deviceHeight * 0.06,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: deviceWidth * 0.15,
                                    height: deviceHeight * 0.06,
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
                                                color: AppColors.textDarkColor),
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
                                  SizedBox(width: deviceWidth * 0.02),
                                  Expanded(
                                    child: Container(
                                      height: deviceHeight * 0.06,
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
                                    color: Colors.red,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                          ],
                        ),
                        SizedBox(height: deviceHeight * 0.02),
                        CustomTextFormField(
                          controller: _emailController,
                          hintText: 'example@gmail.com',
                          labelText: S.of(context).email,
                          errorText: _emailError,
                          onChanged: (value) => _validateField('email'),
                        ),
                        SizedBox(height: deviceHeight * 0.02),
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
                        SizedBox(height: deviceHeight * 0.02),
                        CustomTextFormField(
                          controller: _confirmPasswordController,
                          hintText: '*********',
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
                        SizedBox(height: deviceHeight * 0.04),
                        Center(
                          child: ElevatedButton(
                            onPressed: _submitForm,
                            style: ElevatedButton.styleFrom(
                              minimumSize:
                                  Size(deviceWidth * 0.8, deviceHeight * 0.06),
                              backgroundColor: AppColors.primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                            ),
                            child: Text(
                              S.of(context).signUp,
                              style: AppTextStyles.labelStyle
                                  .copyWith(color: AppColors.textLightColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // SizedBox(height: deviceHeight * 0.05),
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: S.of(context).alreadyHaveAnAccount,
                          style: AppTextStyles.labelStyle,
                        ),
                        TextSpan(
                          text: ' ${S.of(context).signIn}',
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
                  ),
                ),
                const SizedBox(height: 20),
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
