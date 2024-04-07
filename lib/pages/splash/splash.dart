import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/pages/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 3));

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: 932.h,
            width: 430.w,
            decoration: const BoxDecoration(color: primaryColor)),
        Center(
          child: Image.asset(
            'lib/assets/images/cvMaker.png',
            width: double.infinity,
            height: 252.h,
          ),
        )
      ],
    );
  }
}
