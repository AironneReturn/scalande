import 'package:scalande_project/infrastructure/api/rest_api_interceptor.dart';
import 'package:scalande_project/presentation/core/styles/theme_datas.dart';
import 'package:scalande_project/presentation/core/translations/localization_service.dart';
import 'package:scalande_project/presentation/navigation/navigation.dart';
import 'package:scalande_project/presentation/navigation/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'infrastructure/api/rest_api_client.dart';

// import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initServices();
  String initialRoute = Routes.initialRoute;
  runApp(
    GetMaterialApp(
      title: 'RestoCard',
      initialRoute: initialRoute,
      getPages: Nav.routes,
      theme: XThemeData.light(),
      darkTheme: XThemeData.dark(),
      themeMode: ThemeMode.light,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: Locale('fr', 'FR'),
      supportedLocales: const <Locale>[
        Locale('fr', 'FR'),
        Locale('en', 'US'),
      ],
      fallbackLocale: Locale('fr', 'FR'),
      translations: LocalizationService(),
    ),
  );
}

Future<void> initServices() async {
  /// Here is where you put get_storage, hive, shared_pref initialization.
  /// or moor connection, or whatever that's async.

  // await Firebase.initializeApp();
  await GetStorage.init();

  Get.put(
    RestApiClient(
      restApiInterceptor: Get.put(
        RestApiInterceptor(),
      ),
    ),
    permanent: true,
  );

  print('All services started !');
}
