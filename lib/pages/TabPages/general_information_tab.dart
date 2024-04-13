import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/components/custom/bottom_sheet/general_information_bottom_sheet.dart';
import 'package:cv_maker/components/custom/button/my_custom_botton.dart';

import 'package:get/get.dart';
import 'package:cv_maker/components/custom/text_field/my_custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GeneralInformation extends StatelessWidget {
  const GeneralInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 16.h),
      child: Material(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [],
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 19.0.h),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(99.5.r)),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(99.5.r)),
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
                                  borderRadius: BorderRadius.circular(99.5.r)),
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
              const MyTextField(
                  value: 1, hintText: "Firstname", icon: Icons.person),
              const MyTextField(
                  value: 1, hintText: "Middlename", icon: Icons.person),
              const MyTextField(
                  value: 1, hintText: "Lastname", icon: Icons.person),
              const MyTextField(
                  value: 1, hintText: "Address", icon: Icons.location_on),
              const MyTextField(
                  value: 1, hintText: "Phonenumber", icon: Icons.phone),
              const MyTextField(value: 1, hintText: "Email", icon: Icons.mail),
              const MyTextField(
                  value: 1,
                  hintText: "Profession(Job Title)",
                  icon: Icons.work),
              const MyTextField(
                  value: 1,
                  hintText: "Portfolio link(i.e Linked/Behance etc)",
                  icon: Icons.link),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyButton(
                    text: "Help",
                    fontSize: 20.sp,
                    value: 0.22.h,
                    showIcon: false,
                    onPressed: () {
                      Get.bottomSheet(
                        isScrollControlled: true,
                        SizedBox(
                          width: double.infinity,
                          height: Get.height * 0.75,
                          child: MyGeneralBottomSheetContent(),
                        ),
                      );
                    },
                    borderColor: true,
                  ),
                  SizedBox(
                    width: 115.w,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 19.h),
                    child: MyButton(
                      showIcon: false,
                      text: "Next",
                      value: 0.22.h,
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
    );
  }
}
