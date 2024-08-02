import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleProvider extends ChangeNotifier {
  Locale _locale = Locale('en'); // Default locale

  Locale get locale => _locale;

  LocaleProvider() {
    _loadLocale();
  }

  Future<void> setLocale(Locale locale) async {
    if (_locale != locale) {
      _locale = locale;
      notifyListeners();
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('locale', locale.languageCode);
    }
  }

  Future<void> _loadLocale() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? languageCode = prefs.getString('locale');
    if (languageCode != null) {
      _locale = Locale(languageCode);
    }
    notifyListeners();
  }
}
