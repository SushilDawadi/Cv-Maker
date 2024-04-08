import 'package:cv_maker/components/box.dart';
import 'package:cv_maker/components/button.dart';
import 'package:cv_maker/components/text.dart';
import 'package:cv_maker/pages/reset_password/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

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
                "Verify Yourself",
                style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Please enter verification code send to provided email",
                style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 160.h,
              ),
              Wrap(spacing: 7.w, children: const [
                MyBox(),
                MyBox(),
                MyBox(),
                MyBox(),
                MyBox(),
                MyBox(),
              ]),
              SizedBox(
                height: 180.h,
              ),
              MyButton(
                  text: "Verify",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ResetPasswordPage(),
                      ),
                    );
                  }),
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const MyText(
                    text: "Go Back",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
