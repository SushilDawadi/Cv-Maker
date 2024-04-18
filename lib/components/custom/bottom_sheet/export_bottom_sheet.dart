import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class ExportBottomSheetContent extends StatelessWidget {
  const ExportBottomSheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 23.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 50.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Export",
                  style: moreSizeBoldTextStyleBlack,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(12.5.r),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.close,
                      color: white,
                      size: 20.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 17.h),
            child: Row(
              children: [
                const Icon(Icons.picture_as_pdf),
                SizedBox(width: Get.width * 0.07),
                Text(
                  "Export as PDF",
                  style: mainTextStyle,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 17.h),
            child: Row(
              children: [
                const Icon(Icons.image),
                SizedBox(width: Get.width * 0.07),
                Text(
                  "Export as Image",
                  style: mainTextStyle,
                ),
              ],
            ),
          ),
          Row(
            children: [
              const Icon(Icons.share),
              SizedBox(width: Get.width * 0.07),
              Text(
                "Share",
                style: mainTextStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
