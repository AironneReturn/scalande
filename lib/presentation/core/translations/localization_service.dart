import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import 'langs/en_US.dart';
import 'langs/fr_FR.dart';

class LocalizationService extends Translations {
  // Default locale
  static final defaultLocale = Get.deviceLocale;

  // fallbackLocale saves the day when the locale gets in trouble
  static final fallbackLocale = Locale('fr', 'FR');

  // Supported languages
  // Needs to be same order with locales
  static final langs = [
    'Francais - France',
    'English - United States',
  ];

  // Supported locales
  // Needs to be same order with langs
  static final locales = [
    Locale('fr', 'FR'),
    Locale('en', 'US'),
  ];

  // Gets translates for languages
  @override
  Map<String, Map<String, String>> get keys => {
        'fr_FR': frFR,
        'en_US': enUS,
      };

  // Gets locale from language, and updates the locale
  void changeLocale(String lang) {
    final currentLocale = _getLocaleFromLanguage(lang);
    Get.updateLocale(currentLocale);
  }

  // Finds Locale in `locales` list and returns it as language
  String getLanguageFromLocale() {
    String lang = "";
    for (int i = 0; i < locales.length; i++) {
      if (defaultLocale?.languageCode == locales[i].languageCode) {
        lang = langs[i];
      }
    }
    return lang;
  }

  // Finds language in `langs` list and returns it as Locale
  Locale _getLocaleFromLanguage(String lang) {
    for (int i = 0; i < langs.length; i++) {
      if (lang == langs[i]) return locales[i];
    }
    return Get.locale?? Locale('fr');
  }

  String getActualLanguage() {
    return Get.locale!.languageCode;
  }

  List<String> getLangs() {
    return langs;
  }
}
