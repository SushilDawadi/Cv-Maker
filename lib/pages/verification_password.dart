import 'package:cv_maker/components/box.dart';
import 'package:cv_maker/components/button.dart';
import 'package:cv_maker/components/custom/my_custom_app_bar.dart';
import 'package:cv_maker/components/custom/my_custom_heading_text.dart';
import 'package:cv_maker/components/text.dart';
import 'package:cv_maker/pages/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyCustomAppBar(
        showDropButton: false,
        showUserDetails: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 27.w, vertical: 16.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const MyCustomHeadingText(
                    showTemplateImage: false,
                    titleText: "Verify Yourself",
                    subText:
                        "Please enter verification code send to provided email"),
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
                    fontSize: 20.sp,
                    width: double.infinity,
                    text: "Verify",
                    borderColor: false,
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
      ),
    );
  }
}