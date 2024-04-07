import 'package:cv_maker/pages/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (BuildContext context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'CV Maker',
        home: Splash(),
      ),
      designSize: const Size(430, 932),
    );
  }
}
