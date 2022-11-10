import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/app/app.dart';
import 'package:untitled/utils/app_constant.dart';

class MultiLanguages {
  final Locale locale;

  MultiLanguages(
      {this.locale =
          const Locale.fromSubtags(languageCode: AppConstant.countryCodeEN)});

  static MultiLanguages? of(BuildContext context) {
    return Localizations.of<MultiLanguages>(context, MultiLanguages);
  }

  void keepLocalKey(String localKey) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(AppConstant.localeKey);
    await prefs.setString(AppConstant.localeKey, localKey);
  }

  //read sharedPreferences
  Future<String> readLocaleKey() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(AppConstant.localeKey) ?? AppConstant.countryCodeEN;
  }

  void setLocale(BuildContext context, Locale locale) async {
    keepLocalKey(locale.languageCode);
    MyApp.setLocale(context, locale);
  }
}
