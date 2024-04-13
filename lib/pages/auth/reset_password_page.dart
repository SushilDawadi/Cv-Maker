import 'package:cv_maker/assets/styles/container_padding.dart';
import 'package:cv_maker/components/custom/button/my_custom_botton.dart';
import 'package:cv_maker/components/custom/app_bar/my_custom_app_bar.dart';
import 'package:cv_maker/components/custom/heading/my_custom_heading_text.dart';
import 'package:cv_maker/components/custom/text_field/my_custom_text_field.dart';
import 'package:cv_maker/components/custom/text/my_custom_text.dart';
import 'package:cv_maker/pages/authview/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

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
          padding: containerPadding,
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
                const MyTextField(
                    value: 1, hintText: "Code", icon: Icons.fiber_smart_record),
                const MyTextField(
                    value: 1, hintText: "Password", icon: Icons.vpn_key),
                const MyTextField(
                    value: 1,
                    hintText: "Re-type Password",
                    icon: Icons.vpn_key),
                SizedBox(
                  height: 25.h,
                ),
                MyButton(
                  showIcon: false,
                  text: "Reset Password",
                  fontSize: 20.sp,
                  value: 1,
                  onPressed: () {},
                  borderColor: false,
                ),
                Center(
                  child: TextButton(
                      onPressed: () {
                        Get.to(() => const HomePage());
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
