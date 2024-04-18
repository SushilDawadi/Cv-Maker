import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/fonts/font.dart';
import 'package:cv_maker/components/custom/button/my_custom_botton.dart';
import 'package:cv_maker/components/custom/checkbox/my_custom_check_box.dart';
import 'package:cv_maker/components/custom/text_field/my_custom_text_date_field.dart';
import 'package:cv_maker/components/custom/text_field/my_custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AddBottomSheetTemplate extends StatefulWidget {
  final String titleText;
  final String hintTextOne;
  final String hintTextTwo;
  final String hintTextThree;
  final String statusText;
  final String descriptionText;
  final bool isProjectPage;
  const AddBottomSheetTemplate(
      {super.key,
      required this.titleText,
      required this.hintTextOne,
      required this.hintTextTwo,
      required this.hintTextThree,
      required this.statusText,
      required this.descriptionText,
      required this.isProjectPage});

  @override
  State<AddBottomSheetTemplate> createState() => _AddBottomSheetTemplateState();
}

class _AddBottomSheetTemplateState extends State<AddBottomSheetTemplate> {
  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 700;
    TextEditingController dateController = TextEditingController();
    Future<void> selectDate() async {
      DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100),
      );
      if (picked != null) {
        setState(() {
          dateController.text = picked.toString().split(" ")[0];
        });
      }
    }

    return SingleChildScrollView(
      child: Material(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(30.r),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 24.h),
          child: SizedBox(
            width: double.infinity,
            height: Get.height * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 29.h),
                      child: Container(
                        width: 65.w,
                        height: 5.h,
                        decoration: BoxDecoration(
                          color: black,
                          borderRadius: BorderRadius.circular(99.5.r),
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.titleText,
                          style: TextStyle(
                              fontSize: 20.sp,
                              fontFamily: fontFamily,
                              fontWeight: FontWeight.w600),
                        ),
                        IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: const Icon(Icons.close_rounded),
                        )
                      ],
                    ),
                    MyTextField(
                        wValue: 1,
                        hValue: 0.062,
                        hintText: widget.hintTextOne,
                        icon: Icons.apartment),
                    MyTextField(
                        wValue: 1,
                        hValue: 0.062,
                        hintText: widget.hintTextTwo,
                        icon: Icons.school),
                    widget.isProjectPage
                        ? const SizedBox()
                        : MyTextField(
                            wValue: 1,
                            hValue: 0.062,
                            hintText: widget.hintTextThree,
                            icon: Icons.edit),
                    // MyTextField(
                    //     value: 1,
                    //     hintText: widget.hintTextThree,
                    //     icon: Icons.edit),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyCustomDateFiedl(
                            onTap: selectDate,
                            controller: dateController,
                            value: isMobile ? 0.45.h : 0.24.h,
                            hintText: "Start Date",
                            icon: Icons.date_range,
                          ),
                          MyCustomDateFiedl(
                            onTap: selectDate,
                            controller: dateController,
                            value: isMobile ? 0.42.h : 0.24.h,
                            hintText: "End Date",
                            icon: Icons.date_range,
                          ),
                        ]),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 7.h),
                      child: Row(
                        children: [
                          const MyCustomCheckBox(),
                          SizedBox(
                            width: 15.w,
                          ),
                          Text(
                            widget.statusText,
                            style: TextStyle(
                              fontFamily: fontFamily,
                              fontSize: 14.sp,
                              color: subTextColor,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 33.h,
                    ),
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.r),
                        border: Border.all(
                          color: const Color(0xffE5E5E5),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: 8.h, left: 16.h),
                        child: TextField(
                          maxLines: 10,
                          decoration: InputDecoration(
                            hintText: widget.descriptionText,
                            hintStyle: TextStyle(
                              color: iconColor,
                              fontSize: 14.sp,
                            ),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.w,
                              vertical: 20.h,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyButton(
                          showIcon: false,
                          text: "Help",
                          value: isMobile ? 0.3.h : 0.23.h,
                          fontSize: 20.sp,
                          borderColor: true,
                        ),
                        MyButton(
                          showIcon: false,
                          text: "Save",
                          value: isMobile ? 0.3.h : 0.23.h,
                          fontSize: 20.sp,
                          borderColor: false,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
