import 'package:cv_maker/components/button.dart';
import 'package:cv_maker/components/my_appbar.dart';
import 'package:cv_maker/components/text.dart';
import 'package:cv_maker/components/text_field.dart';
import 'package:cv_maker/pages/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 16.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyAppBar(
                titleText: "Let’s get you enrolled",
                subText: "Provide some basic information to get started",
              ),
              SizedBox(
                height: 30.h,
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
              const MyTextField(
                hintText: 'Password',
                icon: Icons.lock,
                obscureText: true,
              ),
              SizedBox(
                height: 10.h,
              ),
              const MyTextField(
                hintText: 'Re-type password',
                icon: Icons.lock,
                obscureText: true,
              ),
              SizedBox(
                height: 30.h,
              ),
              MyButton(
                fontSize: 20.sp,
                text: "Sign up",
                width: double.infinity,
              ),
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
                  child: const MyText(text: "I already have an account"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
