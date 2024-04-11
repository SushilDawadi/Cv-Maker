import 'package:cv_maker/assets/styles/container_padding.dart';
import 'package:cv_maker/components/custom/my_custom_botton.dart';
import 'package:cv_maker/components/custom/my_custom_app_bar.dart';
import 'package:cv_maker/components/custom/my_custom_heading_text.dart';
import 'package:cv_maker/components/custom/my_custom_text_field.dart';
import 'package:cv_maker/components/custom/my_custom_text.dart';
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
