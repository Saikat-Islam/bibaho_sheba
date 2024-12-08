import 'package:bibaho_sheba/core/app_sizes.dart';
import 'package:bibaho_sheba/global.dart';
import 'package:bibaho_sheba/modules/splash_screen.dart';
import 'package:bibaho_sheba/routes/app_pages.dart';
import 'package:bibaho_sheba/utils/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  
  await Global.initializer();
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppSizes().init(context);
    return GetMaterialApp(
      title: 'Bibaho Sheba',
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme(),
      darkTheme: AppTheme.darkTheme(),
      enableLog: true,
      themeMode: ThemeMode.system,
      home: const SplashView(),
    );
  }
}
