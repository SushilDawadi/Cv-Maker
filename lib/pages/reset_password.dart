import 'package:cv_maker/components/button.dart';
import 'package:cv_maker/components/custom/my_custom_app_bar.dart';
import 'package:cv_maker/components/custom/my_custom_heading_text.dart';
import 'package:cv_maker/components/text.dart';
import 'package:cv_maker/components/text_field.dart';
import 'package:cv_maker/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyCustomAppBar(
        showDropButton: false,
        showUserDetails: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 16.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyCustomHeadingText(
                    width: 370.w,
                    titleText: "Reset Password",
                    showTemplateImage: false,
                    subText:
                        "Please enter the verification code send to the provided email"),
                SizedBox(
                  height: 15.h,
                ),
                const MyTextField(hintText: "Code", icon: Icons.code_outlined),
                const MyTextField(hintText: "Password", icon: Icons.lock),
                const MyTextField(
                    hintText: "Re-type Password", icon: Icons.lock),
                SizedBox(
                  height: 25.h,
                ),
                MyButton(
                  text: "Reset Password",
                  fontSize: 20.sp,
                  width: double.infinity,
                  onPressed: () {},
                  borderColor: false,
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
      ),
    );
  }
}
