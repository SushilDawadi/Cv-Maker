import 'package:cv_maker/assets/styles/container_padding.dart';
import 'package:cv_maker/components/custom/my_custom_box.dart';
import 'package:cv_maker/components/custom/my_custom_botton.dart';
import 'package:cv_maker/components/custom/my_custom_app_bar.dart';
import 'package:cv_maker/components/custom/my_custom_heading_text.dart';
import 'package:cv_maker/components/custom/my_custom_text.dart';
import 'package:cv_maker/pages/reset_password_page.dart';
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
          padding: containerPadding,
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
                  MyCustomBox(),
                  MyCustomBox(),
                  MyCustomBox(),
                  MyCustomBox(),
                  MyCustomBox(),
                  MyCustomBox(),
                ]),
                SizedBox(
                  height: 180.h,
                ),
                MyButton(
                    showIcon: false,
                    fontSize: 20.sp,
                    value: 1,
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
