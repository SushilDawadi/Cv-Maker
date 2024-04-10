import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/components/bottomBar.dart';
import 'package:cv_maker/components/button.dart';
import 'package:cv_maker/components/custom/my_custom_app_bar.dart';
import 'package:cv_maker/components/my_nav_title.dart';
import 'package:cv_maker/components/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GeneralInformation extends StatefulWidget {
  const GeneralInformation({super.key});

  @override
  State<GeneralInformation> createState() => _GeneralInformationState();
}

class _GeneralInformationState extends State<GeneralInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyCustomAppBar(
        showDropButton: false,
        showUserDetails: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 16.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // MyNameAppBar(
                    //   isHorizontal: false,
                    //   showImage: false,
                    //   showText: false,
                    // ),
                  ],
                ),
                const MyNavTitle(),
                Padding(
                  padding: EdgeInsets.only(bottom: 19.0.h),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(99.5.r)),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius:
                              BorderRadius.all(Radius.circular(99.5.r)),
                          child: Image.asset(
                            'lib/assets/images/yashwindar_sir.png',
                            fit: BoxFit.cover,
                            height: 199.h,
                            width: 199.h,
                          ),
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: IconButton(
                              onPressed: () {},
                              icon: Container(
                                decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius:
                                        BorderRadius.circular(99.5.r)),
                                child: Icon(
                                  Icons.add,
                                  color: white,
                                  size: 39.sp,
                                ),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
                const MyTextField(hintText: "Firstname", icon: Icons.person),
                const MyTextField(hintText: "Middlename", icon: Icons.person),
                const MyTextField(hintText: "Lastname", icon: Icons.person),
                const MyTextField(hintText: "Address", icon: Icons.location_on),
                const MyTextField(hintText: "Phonenumber", icon: Icons.phone),
                const MyTextField(hintText: "Email", icon: Icons.mail),
                const MyTextField(
                    hintText: "Profession(Job Title)", icon: Icons.work),
                const MyTextField(
                    hintText: "Portfolio link(i.e Linked/Behance etc)",
                    icon: Icons.link),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 19.h),
                      child: MyButton(
                        text: "Help",
                        width: 129.w,
                        fontSize: 20.sp,
                        borderColor: true,
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      width: 115.w,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 19.h),
                      child: MyButton(
                        text: "Next",
                        width: 129.w,
                        fontSize: 20.sp,
                        borderColor: false,
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(
                      height: 51.h,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const MyBottomBar(),
    );
  }
}
