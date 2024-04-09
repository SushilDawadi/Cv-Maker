import 'package:cv_maker/components/bottomBar.dart';
import 'package:cv_maker/components/my_appbar.dart';
import 'package:cv_maker/pages/template_selected/template_selected.dart';
import 'package:cv_maker/utils/imagePath.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SingleCategoryTemplate extends StatelessWidget {
  const SingleCategoryTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 16.h),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyAppBar(
                      titleText: "Compelete Setup",
                      subText:
                          "Provide with additional details to complete setup",
                      showDropButton: true,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const TemplateSelected()));
                      },
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10.h,
                          crossAxisSpacing: 10.w),
                      itemCount: imgPath.length,
                      itemBuilder: (context, index) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(18.r),
                          child: Image.asset(
                            imgPath[index],
                            height: 205.h,
                            width: 139.w,
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
