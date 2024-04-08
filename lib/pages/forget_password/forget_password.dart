import 'package:cv_maker/components/button.dart';
import 'package:cv_maker/components/my_appbar.dart';
import 'package:cv_maker/components/text.dart';
import 'package:cv_maker/components/text_field.dart';
import 'package:cv_maker/pages/verify_password/verification_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyAppBar(
                  titleText: "Forgot password",
                  subText: "Please provide us with your email to continue"),
              SizedBox(
                height: 30.h,
              ),
              const MyTextField(hintText: 'Email', icon: Icons.email),
              SizedBox(
                height: 30.h,
              ),
              MyButton(
                fontSize: 20.sp,
                text: "Continue",
                width: double.infinity,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const VerificationPage(),
                    ),
                  );
                },
              ),
              SizedBox(
                height: 20.h,
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
