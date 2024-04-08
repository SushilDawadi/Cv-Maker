import 'package:cv_maker/components/button.dart';
import 'package:cv_maker/components/my_appbar.dart';
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
        padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 16.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyAppBar(
                  titleText: "Reset Password",
                  subText:
                      "Please enter the verification code send to the provided email"),
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
                fontSize: 20.sp,
                width: double.infinity,
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
