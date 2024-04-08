import 'package:cv_maker/utils/imagePath.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTemplateTile extends StatelessWidget {
  const MyTemplateTile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260.h,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imgPath.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 13.w, top: 25.h),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18.r),
                    child: Image.asset(
                      imgPath[index],
                      height: 205.h,
                      width: 139.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
