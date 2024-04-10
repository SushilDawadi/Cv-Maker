import 'package:cv_maker/components/button.dart';
import 'package:cv_maker/components/text.dart';
import 'package:cv_maker/components/custom/my_custom_text_field.dart';
import 'package:cv_maker/pages/forget_password.dart';
import 'package:cv_maker/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 130.h,
            ),
            Image.asset(
              'lib/assets/images/cvMaker.png',
              width: double.infinity,
              height: 157.h,
            ),
            SizedBox(
              height: 20.h,
            ),
            Column(
              children: [
                const MyTextField(hintText: "Email", icon: Icons.email),
                const MyTextField(
                  hintText: "Password",
                  icon: Icons.lock,
                  obscureText: true,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ForgetPasswordPage()));
                          },
                          child: const MyText(text: "Forgot Password?"))
                    ],
                  ),
                ),
                MyButton(
                  fontSize: 20.sp,
                  text: "Login",
                  width: double.infinity,
                  borderColor: false,
                ),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpPage()));
                    },
                    child: const MyText(
                      text: "Create a new account",
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
