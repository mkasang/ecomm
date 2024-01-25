import 'package:ecommerce/route/app_page.dart';
import 'package:ecommerce/route/app_route.dart';
import 'package:ecommerce/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages:AppPage.list,
     initialRoute: AppRoute.dashboard,
     theme: AppTheme.lightTheme,
     themeMode: ThemeMode.light,
    );
  }
}
