import 'package:flutter/material.dart';
import 'package:flutter_widgets_lab/app/modules/home_binding.dart';
import 'package:flutter_widgets_lab/app/modules/home_page.dart';
import 'package:flutter_widgets_lab/app/routes/app_pages.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      initialBinding: HomeBinding(),
      home: const HomePage(),
      getPages: AppPages.pages,
    );
  }
}
