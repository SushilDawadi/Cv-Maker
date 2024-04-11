import 'package:cv_maker/assets/colors/color.dart';
import 'package:cv_maker/assets/styles/container_padding.dart';
import 'package:cv_maker/assets/styles/text_styles.dart';
import 'package:cv_maker/components/custom/my_custom_botton.dart';
import 'package:cv_maker/components/custom/my_custom_app_bar.dart';
import 'package:cv_maker/components/custom/my_custom_heading_text.dart';
import 'package:cv_maker/pages/template_selected_page.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddCategoryTemplate extends StatelessWidget {
  const AddCategoryTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCustomAppBar(
        showUserDetails: false,
        showDropButton: true,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TemplateSelected(),
            ),
          );
        },
      ),
      body: SafeArea(
        child: Padding(
          padding: containerPadding,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyCustomHeadingText(
                        titleText: "Subtle me",
                        width: 250.w,
                        showTemplateImage: true,
                        subText:
                            "Basic  •  Prasiddha Nepane\n\nThis template is designed for you to introduce yourself in very basic but subtle manner."),
                    Padding(
                      padding: EdgeInsets.only(top: 50.h),
                      child: MyButton(
                        text: "Use new data",
                        width: 383.w,
                        fontSize: 20.sp,
                        borderColor: true,
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 31.h),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          border: Border.all(
                            color: textFieldInputColor,
                          ),
                        ),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 53.h,
                            ),
                            Padding(
                              padding: EdgeInsets.only(bottom: 15.h),
                              child: Text(
                                "No Previous Data Found",
                                style: subTextStylethin,
                              ),
                            ),
                            Center(
                                child: DottedBorder(
                              borderType: BorderType.RRect,
                              radius: Radius.circular(12.r),
                              color: primaryColor,
                              strokeWidth: 2,
                              dashPattern: const [
                                5,
                                5,
                              ],
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 56.w, vertical: 15.h),
                                child: Text(
                                  "Add Detail +",
                                  style: primaryColorButtonTextStyle,
                                ),
                              ),
                            )),
                            SizedBox(
                              height: 51.h,
                            ),
                          ],
                        ),
                      ),
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
