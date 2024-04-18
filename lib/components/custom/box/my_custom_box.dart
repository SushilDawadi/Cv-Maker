import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyCustomBox extends StatelessWidget {
  const MyCustomBox({super.key});

  @override
  Widget build(BuildContext context) {
    final mobile = Get.width < 700;
    return SizedBox(
      width: mobile ? Get.width * 0.13 : Get.width * 0.2,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(9.r),
          ),
        ),
      ),
    );
  }
}
