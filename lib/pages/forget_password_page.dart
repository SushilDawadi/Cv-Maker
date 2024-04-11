import 'package:cv_maker/assets/styles/container_padding.dart';
import 'package:cv_maker/components/custom/my_custom_botton.dart';
import 'package:cv_maker/components/custom/my_custom_app_bar.dart';
import 'package:cv_maker/components/custom/my_custom_heading_text.dart';
import 'package:cv_maker/components/custom/my_custom_text.dart';
import 'package:cv_maker/components/custom/my_custom_text_field.dart';
import 'package:cv_maker/pages/verification_password_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

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
                    titleText: "Forget Password",
                    showTemplateImage: false,
                    subText: "Please provide us with your email to continue"),
                SizedBox(
                  height: 20.h,
                ),
                const MyTextField(
                    value: 1, hintText: 'Email', icon: Icons.email),
                SizedBox(
                  height: 25.h,
                ),
                MyButton(
                  fontSize: 20.sp,
                  text: "Continue",
                  width: double.infinity,
                  borderColor: false,
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
      ),
    );
  }
}
