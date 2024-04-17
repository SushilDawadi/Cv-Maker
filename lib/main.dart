
import 'package:cv_maker/pages/tabpages/tab_main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, child) => const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'CV Maker',
        home: MyCustomTabBar(),
      ),
      designSize: const Size(430, 932),
    );
  }
}
