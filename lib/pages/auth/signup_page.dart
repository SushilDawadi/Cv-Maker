import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/styles/container_padding.dart';
import 'package:cv_maker/components/custom/button/my_custom_botton.dart';
import 'package:cv_maker/components/custom/app_bar/my_custom_app_bar.dart';
import 'package:cv_maker/components/custom/heading/my_custom_heading_text.dart';
import 'package:cv_maker/components/custom/text/my_custom_text.dart';
import 'package:cv_maker/components/custom/text_field/my_custom_text_field.dart';
import 'package:cv_maker/pages/auth/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
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
                  titleText: "Let’s get you enrolled",
                  subText: "Provide some basic information to get started",
                  showTemplateImage: false,
                ),
                SizedBox(
                  height: 30.h,
                ),
                const MyTextField(
                    value: 1, hintText: 'First name', icon: Icons.person),
                const MyTextField(
                    value: 1, hintText: 'Middle name', icon: Icons.person),
                const MyTextField(
                    value: 1, hintText: 'Last name', icon: Icons.person),
                const MyTextField(
                    value: 1, hintText: 'Address', icon: Icons.location_on),
                const MyTextField(
                    value: 1, hintText: 'Phone number', icon: Icons.phone),
                const MyTextField(
                    value: 1, hintText: 'Email', icon: Icons.mail),
                const MyTextField(
                    value: 1,
                    hintText: 'Password',
                    icon: Icons.vpn_key,
                    obscureText: true),
                const MyTextField(
                  value: 1,
                  hintText: 'Re-type password',
                  icon: Icons.vpn_key,
                  obscureText: true,
                ),
                SizedBox(
                  height: 30.h,
                ),
                MyButton(
                  showIcon: false,
                  fontSize: 20.sp,
                  text: "Sign up",
                  value: 1,
                  borderColor: false,
                ),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()));
                    },
                    child: const MyText(text: "I already have an account"),
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
