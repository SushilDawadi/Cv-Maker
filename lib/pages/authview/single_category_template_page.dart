import 'package:cv_maker/assets/styles/container_padding.dart';
import 'package:cv_maker/components/custom/bottom_bar/my_custom_bottom_bar.dart';
import 'package:cv_maker/components/custom/app_bar/my_custom_app_bar.dart';
import 'package:cv_maker/components/custom/heading/my_custom_heading_text.dart';
import 'package:cv_maker/pages/authview/template_selected_page.dart';
import 'package:cv_maker/utils/utils_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SingleCategoryTemplate extends StatelessWidget {
  const SingleCategoryTemplate({super.key});

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
                        titleText: "Basic",
                        width: 370.w,
                        showTemplateImage: false,
                        subText:
                            "Basic templates suitable to introduce yourself"),
                    SizedBox(
                      height: 20.h,
                    ),
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10.h,
                          crossAxisSpacing: 10.w),
                      itemCount: Utils.imgPath.length,
                      itemBuilder: (context, index) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(18.r),
                          child: Image.asset(
                            Utils.imgPath[index],
                            fit: BoxFit.fill,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const MyBottomBar(),
    );
  }
}
