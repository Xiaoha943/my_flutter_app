import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
void main() {
  // runApp(const MyApp());
  runApp(
    GetMaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/home',
      getPages:AppPages.routes,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFFAFAFA)),
      ),
      debugShowCheckedModeBanner: false,
    )
  );
}

