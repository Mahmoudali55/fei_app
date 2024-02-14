import 'dart:developer';

import 'package:fei_app/helper/routes/routes.dart';
import 'package:fei_app/helper/utils/app_info.dart';
import 'package:fei_app/helper/utils/lang.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppInfo.loadAppInfo();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  ///get local or default lang
  Locale currentLocale = await Lang.getDefaultOrStoredLocal();
  log(currentLocale.toString());
  //load App Info version number and package name etc.......
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent, // navigation bar color
      statusBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.transparent // status bar color
      ));

  runApp(Fei(
    currentLocale: currentLocale,
  ));
}

class Fei extends StatelessWidget {
  const Fei({super.key, required this.currentLocale});
  final Locale? currentLocale;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: ScreenUtilInit(
        useInheritedMediaQuery: true,
        designSize: const Size(428, 926),
        builder: (context, widget) => GetMaterialApp(
          locale: const Locale('en'),
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          debugShowCheckedModeBanner: false,
          theme: ThemeData(),
          initialRoute: ScreenNames.bottomNavigationBar,
          routes: appRoutes(context),
          fallbackLocale: currentLocale,
          translations: Lang(),
        ),
      ),
    );
  }
}
