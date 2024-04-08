import 'package:cv_maker/components/button.dart';
import 'package:cv_maker/components/text.dart';
import 'package:cv_maker/components/text_field.dart';
import 'package:cv_maker/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
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
                "Reset Password",
                style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Please enter the verification code sent to the provided email",
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 15.h,
              ),
              const MyTextField(hintText: "Code", icon: Icons.code_outlined),
              SizedBox(
                height: 10.h,
              ),
              const MyTextField(hintText: "Password", icon: Icons.lock),
              SizedBox(
                height: 10.h,
              ),
              const MyTextField(hintText: "Re-type Password", icon: Icons.lock),
              SizedBox(
                height: 40.h,
              ),
              MyButton(
                text: "Reset Password",
                onPressed: () {},
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
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                    child: const MyText(
                      text: "Change Password",
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
