import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/components/button.dart';
import 'package:cv_maker/components/custom/my_custom_app_bar.dart';
import 'package:cv_maker/components/custom/my_custom_heading_text.dart';
import 'package:cv_maker/components/text.dart';
import 'package:cv_maker/components/custom/my_custom_text_field.dart';
import 'package:cv_maker/pages/login_page.dart';
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
          padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 16.h),
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
                const MyTextField(hintText: 'First name', icon: Icons.person),
                const MyTextField(hintText: 'Middle name', icon: Icons.person),
                const MyTextField(hintText: 'Last name', icon: Icons.person),
                const MyTextField(hintText: 'Address', icon: Icons.location_on),
                const MyTextField(hintText: 'Phone number', icon: Icons.phone),
                const MyTextField(hintText: 'Email', icon: Icons.mail),
                const MyTextField(
                    hintText: 'Password', icon: Icons.lock, obscureText: true),
                const MyTextField(
                  hintText: 'Re-type password',
                  icon: Icons.lock,
                  obscureText: true,
                ),
                MyButton(
                  fontSize: 20.sp,
                  text: "Sign up",
                  width: double.infinity,
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
