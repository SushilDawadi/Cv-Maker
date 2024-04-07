import 'package:cv_maker/pages/components/button.dart';
import 'package:cv_maker/pages/components/text.dart';
import 'package:cv_maker/pages/components/text_field.dart';
import 'package:cv_maker/pages/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 27.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 70.h,
              ),
              Image.asset(
                'lib/assets/images/cvMaker.png',
                width: 62.w,
                height: 62.h,
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                "Let's get you enrolled",
                style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Provide some basic information to get started",
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 15.h,
              ),
              const MyTextField(hintText: 'First name', icon: Icons.person),
              SizedBox(
                height: 10.h,
              ),
              const MyTextField(hintText: 'Middle name', icon: Icons.person),
              SizedBox(
                height: 10.h,
              ),
              const MyTextField(hintText: 'Last name', icon: Icons.person),
              SizedBox(
                height: 10.h,
              ),
              const MyTextField(hintText: 'Address', icon: Icons.location_on),
              SizedBox(
                height: 10.h,
              ),
              const MyTextField(hintText: 'Phone number', icon: Icons.phone),
              SizedBox(
                height: 10.h,
              ),
              const MyTextField(hintText: 'Email', icon: Icons.mail),
              SizedBox(
                height: 10.h,
              ),
              const MyTextField(hintText: 'Password', icon: Icons.lock),
              SizedBox(
                height: 10.h,
              ),
              const MyTextField(hintText: 'Re-type password', icon: Icons.lock),
              SizedBox(
                height: 10.h,
              ),
              const MyButton(text: "Sign up"),
              SizedBox(
                height: 20.h,
              ),
              Center(
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()));
                      },
                      child: const MyText(text: "I already have an account")))
            ],
          ),
        ),
      ),
    );
  }
}
