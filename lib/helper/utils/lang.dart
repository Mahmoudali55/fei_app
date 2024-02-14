import 'package:fei_app/helper/lang/ar.dart';
import 'package:fei_app/helper/lang/en.dart';
import 'package:fei_app/helper/utils/app_fonts.dart';
import 'package:fei_app/helper/utils/app_settings.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

extension T on String {
  String get trans {
    String? word = tr;
    //  if (word != null) {
    return word;
    // } else {
    //   return 'none';
    // }
  }
}

class Lang extends Translations {
  static Future<Locale> getDefaultOrStoredLocal() async {
    var appLocale = const Locale('ar'); //set defualt
    var prefs = await SharedPreferences
        .getInstance(); //create instance from SharedPreferences
    if (prefs.getString('language_code') == null) {
      await prefs.setString('language_code', 'ar'); //store defalut
      globalLang = appLocale.toString(); //set globalLang
      isArabic = true; //set isArabic
      return appLocale; //return default
    } else {
      appLocale = Locale(prefs.getString('language_code')!); //get stored
      globalLang = appLocale.toString(); //set globalLang
      isArabic = globalLang == "ar" ? true : false; //set isArabic
      return appLocale; //return stored
    }
  }

  static changeLang(Locale locale) async {
    var prefs = await SharedPreferences.getInstance();
    var appLocale = await getDefaultOrStoredLocal();
    if (appLocale == locale) {
      return;
    }
    if (locale == const Locale("ar")) {
      Get.updateLocale(locale);
      appLocale = const Locale("ar");
      await prefs.setString('language_code', 'ar');
      globalLang = appLocale.toString();
      isArabic = true;
      await prefs.setString('countryCode', '');
    } else {
      Get.updateLocale(locale);
      appLocale = const Locale("en");
      globalLang = appLocale.toString();
      isArabic = false;
      await prefs.setString('language_code', 'en');
      await prefs.setString('countryCode', 'US');
    }
    AppFonts.lightfont = isArabic ? "Inter" : "Inter";
  }

  @override
  Map<String, Map<String, String>> get keys => {
        'en': en,
        'ar': ar,
      };
  static final locales = [
    const Locale('en', 'US'),
    const Locale('ar', ''),
  ];
}
