// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Welcome Back!`
  String get welcomeBack {
    return Intl.message(
      'Welcome Back!',
      name: 'welcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Login to share your grievance!`
  String get loginGrievance {
    return Intl.message(
      'Login to share your grievance!',
      name: 'loginGrievance',
      desc: '',
      args: [],
    );
  }

  /// `Your Email`
  String get yourEmail {
    return Intl.message(
      'Your Email',
      name: 'yourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `தமிழ்`
  String get tamil {
    return Intl.message(
      'தமிழ்',
      name: 'tamil',
      desc: '',
      args: [],
    );
  }

  /// `Don’t have an account? `
  String get dontHaveAccount {
    return Intl.message(
      'Don’t have an account? ',
      name: 'dontHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message(
      'Sign Up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signIn {
    return Intl.message(
      'Sign In',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your name`
  String get pleaseEnterYourName {
    return Intl.message(
      'Please enter your name',
      name: 'pleaseEnterYourName',
      desc: '',
      args: [],
    );
  }

  /// `Please enter valid name`
  String get PleaseEnterValidName {
    return Intl.message(
      'Please enter valid name',
      name: 'PleaseEnterValidName',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your mobile number`
  String get pleaseEnterYourMobileNumber {
    return Intl.message(
      'Please enter your mobile number',
      name: 'pleaseEnterYourMobileNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please enter exactly 10 digits`
  String get pleaseEnterExactly10Digits {
    return Intl.message(
      'Please enter exactly 10 digits',
      name: 'pleaseEnterExactly10Digits',
      desc: '',
      args: [],
    );
  }

  /// `Mobile number must start with 6, 7, 8, or 9`
  String get mobileNumberMustStartWith6 {
    return Intl.message(
      'Mobile number must start with 6, 7, 8, or 9',
      name: 'mobileNumberMustStartWith6',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email address`
  String get pleaseEnterAValidEmailAddress {
    return Intl.message(
      'Please enter a valid email address',
      name: 'pleaseEnterAValidEmailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email`
  String get pleaseEnterYourEmail {
    return Intl.message(
      'Please enter your email',
      name: 'pleaseEnterYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your password`
  String get pleaseEnterYourPassword {
    return Intl.message(
      'Please enter your password',
      name: 'pleaseEnterYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 6 characters`
  String get passwordMustBeAtLeast6Characters {
    return Intl.message(
      'Password must be at least 6 characters',
      name: 'passwordMustBeAtLeast6Characters',
      desc: '',
      args: [],
    );
  }

  /// `Please confirm your password`
  String get pleaseConfirmYourPassword {
    return Intl.message(
      'Please confirm your password',
      name: 'pleaseConfirmYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get passwordsDoNotMatch {
    return Intl.message(
      'Passwords do not match',
      name: 'passwordsDoNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `Your Name`
  String get yourName {
    return Intl.message(
      'Your Name',
      name: 'yourName',
      desc: '',
      args: [],
    );
  }

  /// `Enter your name`
  String get yourNameHint {
    return Intl.message(
      'Enter your name',
      name: 'yourNameHint',
      desc: '',
      args: [],
    );
  }

  /// `Mobile No`
  String get mobileNo {
    return Intl.message(
      'Mobile No',
      name: 'mobileNo',
      desc: '',
      args: [],
    );
  }

  /// `Enter your mobile number`
  String get mobileNoHint {
    return Intl.message(
      'Enter your mobile number',
      name: 'mobileNoHint',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get emailHint {
    return Intl.message(
      'Enter your email',
      name: 'emailHint',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get passwordHint {
    return Intl.message(
      'Enter your password',
      name: 'passwordHint',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Confirm your password`
  String get confirmPasswordHint {
    return Intl.message(
      'Confirm your password',
      name: 'confirmPasswordHint',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get alreadyHaveAnAccount {
    return Intl.message(
      'Already have an account?',
      name: 'alreadyHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Public Grievance Portal`
  String get appTitle {
    return Intl.message(
      'Public Grievance Portal',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `Submitted Grievance`
  String get submittedGrievance {
    return Intl.message(
      'Submitted Grievance',
      name: 'submittedGrievance',
      desc: '',
      args: [],
    );
  }

  /// `Resolved Grievance`
  String get resolvedGrievance {
    return Intl.message(
      'Resolved Grievance',
      name: 'resolvedGrievance',
      desc: '',
      args: [],
    );
  }

  /// `Know your Municipality`
  String get knowYourMunicipality {
    return Intl.message(
      'Know your Municipality',
      name: 'knowYourMunicipality',
      desc: '',
      args: [],
    );
  }

  /// `New Grievance`
  String get newGrievance {
    return Intl.message(
      'New Grievance',
      name: 'newGrievance',
      desc: '',
      args: [],
    );
  }

  /// `Registered Grievance`
  String get registeredGrievance {
    return Intl.message(
      'Registered Grievance',
      name: 'registeredGrievance',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get gallery {
    return Intl.message(
      'Gallery',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `Videos`
  String get videos {
    return Intl.message(
      'Videos',
      name: 'videos',
      desc: '',
      args: [],
    );
  }

  /// `My Grievance`
  String get myGrievance {
    return Intl.message(
      'My Grievance',
      name: 'myGrievance',
      desc: '',
      args: [],
    );
  }

  /// `No Grievance to Show`
  String get noGrievanceToShow {
    return Intl.message(
      'No Grievance to Show',
      name: 'noGrievanceToShow',
      desc: '',
      args: [],
    );
  }

  /// `Grievance Form`
  String get grievanceFormTitle {
    return Intl.message(
      'Grievance Form',
      name: 'grievanceFormTitle',
      desc: '',
      args: [],
    );
  }

  /// `Grievance Type`
  String get grievanceType {
    return Intl.message(
      'Grievance Type',
      name: 'grievanceType',
      desc: '',
      args: [],
    );
  }

  /// `Select Grievance Type`
  String get selectGrievanceType {
    return Intl.message(
      'Select Grievance Type',
      name: 'selectGrievanceType',
      desc: '',
      args: [],
    );
  }

  /// `Grievance`
  String get grievance {
    return Intl.message(
      'Grievance',
      name: 'grievance',
      desc: '',
      args: [],
    );
  }

  /// `Enter your query`
  String get enterYourQuery {
    return Intl.message(
      'Enter your query',
      name: 'enterYourQuery',
      desc: '',
      args: [],
    );
  }

  /// `Grievance Location`
  String get grievanceLocation {
    return Intl.message(
      'Grievance Location',
      name: 'grievanceLocation',
      desc: '',
      args: [],
    );
  }

  /// `Taluk`
  String get taluk {
    return Intl.message(
      'Taluk',
      name: 'taluk',
      desc: '',
      args: [],
    );
  }

  /// `Select Taluk`
  String get selectTaluk {
    return Intl.message(
      'Select Taluk',
      name: 'selectTaluk',
      desc: '',
      args: [],
    );
  }

  /// `Union`
  String get union {
    return Intl.message(
      'Union',
      name: 'union',
      desc: '',
      args: [],
    );
  }

  /// `Select Union`
  String get selectUnion {
    return Intl.message(
      'Select Union',
      name: 'selectUnion',
      desc: '',
      args: [],
    );
  }

  /// `Town Panchayat`
  String get townPanchayat {
    return Intl.message(
      'Town Panchayat',
      name: 'townPanchayat',
      desc: '',
      args: [],
    );
  }

  /// `Select Town Panchayat`
  String get selectTownPanchayat {
    return Intl.message(
      'Select Town Panchayat',
      name: 'selectTownPanchayat',
      desc: '',
      args: [],
    );
  }

  /// `Village Panchayat`
  String get villagePanchayat {
    return Intl.message(
      'Village Panchayat',
      name: 'villagePanchayat',
      desc: '',
      args: [],
    );
  }

  /// `Select Village Panchayat`
  String get selectVillagePanchayat {
    return Intl.message(
      'Select Village Panchayat',
      name: 'selectVillagePanchayat',
      desc: '',
      args: [],
    );
  }

  /// `Village / Town`
  String get villageTown {
    return Intl.message(
      'Village / Town',
      name: 'villageTown',
      desc: '',
      args: [],
    );
  }

  /// `Select Village / Town`
  String get selectVillageTown {
    return Intl.message(
      'Select Village / Town',
      name: 'selectVillageTown',
      desc: '',
      args: [],
    );
  }

  /// `Ward No`
  String get wardNo {
    return Intl.message(
      'Ward No',
      name: 'wardNo',
      desc: '',
      args: [],
    );
  }

  /// `Select Ward No`
  String get selectWardNo {
    return Intl.message(
      'Select Ward No',
      name: 'selectWardNo',
      desc: '',
      args: [],
    );
  }

  /// `Street Name`
  String get streetName {
    return Intl.message(
      'Street Name',
      name: 'streetName',
      desc: '',
      args: [],
    );
  }

  /// `Select Street`
  String get selectStreetName {
    return Intl.message(
      'Select Street',
      name: 'selectStreetName',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Type1`
  String get type1 {
    return Intl.message(
      'Type1',
      name: 'type1',
      desc: '',
      args: [],
    );
  }

  /// `Type2`
  String get type2 {
    return Intl.message(
      'Type2',
      name: 'type2',
      desc: '',
      args: [],
    );
  }

  /// `Type3`
  String get type3 {
    return Intl.message(
      'Type3',
      name: 'type3',
      desc: '',
      args: [],
    );
  }

  /// `Please select a {label}`
  String pleaseSelect(Object label) {
    return Intl.message(
      'Please select a $label',
      name: 'pleaseSelect',
      desc: '',
      args: [label],
    );
  }

  /// `Please enter {label}`
  String pleaseEnter(Object label) {
    return Intl.message(
      'Please enter $label',
      name: 'pleaseEnter',
      desc: '',
      args: [label],
    );
  }

  /// `Email is required`
  String get emailRequired {
    return Intl.message(
      'Email is required',
      name: 'emailRequired',
      desc: '',
      args: [],
    );
  }

  /// `Password is required`
  String get passwordRequired {
    return Intl.message(
      'Password is required',
      name: 'passwordRequired',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ta'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
