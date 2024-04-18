import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/styles/container_padding.dart';
import 'package:cv_maker/components/custom/bottom_bar/my_custom_bottom_bar.dart';
import 'package:cv_maker/components/custom/bottom_sheet/export_bottom_sheet.dart';
import 'package:cv_maker/components/custom/button/my_custom_botton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FinalPreview extends StatelessWidget {
  const FinalPreview({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 700;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: containerPadding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 0.01.sh,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.asset(
                    'lib/assets/images/template4.jpg',
                    fit: BoxFit.fill,
                    width: 323.w,
                    height: 450.h,
                  ),
                  Positioned(
                    right: -8,
                    top: -16,
                    child: Container(
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(99.r),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: () {
                            Get.bottomSheet(
                              backgroundColor: white,
                              isScrollControlled: true,
                              SizedBox(
                                  width: double.infinity,
                                  height: Get.height * 0.3,
                                  child: const ExportBottomSheetContent()),
                            );
                          },
                          child: Icon(
                            Icons.brush,
                            color: white,
                            size: 32.sp,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 0.06.sh,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyButton(
                    text: "Preview",
                    fontSize: 20.sp,
                    value: 0.35,
                    showIcon: false,
                    borderColor: true,
                  ),
                  MyButton(
                    text: "Export",
                    fontSize: 20.sp,
                    value: 0.35,
                    showIcon: false,
                    borderColor: false,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const MyBottomBar(),
    );
  }
}
