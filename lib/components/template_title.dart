import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTemplateTile extends StatelessWidget {
  const MyTemplateTile({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imgPath = [
      "lib/assets/images/templateImage1.jpg",
      "lib/assets/images/templateImage2.png",
      "lib/assets/images/templateImage3.png",
    ];
    return SizedBox(
      height: 260.h,
      child: Expanded(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: imgPath.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: 13.w),
              child: Image.asset(
                imgPath[index],
                height: 205.h,
                width: 139.w,
              ),
            );
          },
        ),
      ),
    );
  }
}
