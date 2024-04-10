import 'package:cv_maker/components/bottomBar.dart';
import 'package:cv_maker/components/custom/my_custom_app_bar.dart';
import 'package:cv_maker/components/custom/my_custom_heading_text.dart';
import 'package:cv_maker/pages/template_selected/template_selected.dart';
import 'package:cv_maker/utils/utilsClass.dart';
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
          padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 16.h),
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
