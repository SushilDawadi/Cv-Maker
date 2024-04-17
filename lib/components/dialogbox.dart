import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/styles/text_styles.dart';
import 'package:cv_maker/components/custom/button/my_custom_botton.dart';
import 'package:cv_maker/components/custom/text_field/my_custom_text_field.dart';
import 'package:cv_maker/components/difficulty_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DialogBox extends StatelessWidget {
  final List list;
  final String titleText;

  const DialogBox({
    super.key,
    required this.list,
    required this.titleText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 17.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                titleText,
                style: boldTextStyleBlack,
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
          padding: EdgeInsets.only(bottom: 23.h),
          child: const MyTextField(
            hintText: "Search. . .",
            icon: Icons.search,
            value: 0.69,
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      list[index],
                      style: boldTextStyleBlack,
                    ),
                    const Divider(
                      color: textFieldInputColor,
                    ),
                  ],
                );
              }),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 23.h),
          child: const MyTextField(
            hintText: "Add Custom",
            icon: Icons.language,
            value: 0.69,
          ),
        ),
        MyButton(
          text: "Add",
          fontSize: 20.sp,
          value: 0.8,
          showIcon: false,
          borderColor: false,
          onPressed: () {
            Get.back();
            showDialog(
              context: context,
              builder: (_) => AlertDialog(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0.r))),
                content: Builder(
                  builder: (context) {
                    return SizedBox(
                      height: Get.height * 0.25,
                      width: Get.width,
                      child: const DifficultyDialog(),
                    );
                  },
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
