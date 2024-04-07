import 'package:cv_maker/pages/components/button.dart';
import 'package:cv_maker/pages/components/text.dart';
import 'package:cv_maker/pages/components/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

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
                "Please Provide us with your email to continue",
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 15.h,
              ),
              const MyTextField(hintText: 'Email', icon: Icons.email),
              SizedBox(
                height: 30.h,
              ),
              const MyButton(text: "Continue"),
              SizedBox(
                height: 35.h,
              ),
              Center(
                child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const MyText(text: "Go back")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
