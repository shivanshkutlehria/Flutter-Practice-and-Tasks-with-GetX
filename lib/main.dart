import 'package:aoo_ui_using_getx/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
import 'app/routes/app_routes.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Music App',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        primaryColor: Color(0xFF6C63FF),
      ),
      initialRoute: AppRoutes.HOME,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}

