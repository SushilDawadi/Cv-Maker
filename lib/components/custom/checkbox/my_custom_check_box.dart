import 'package:cv_maker/assets/colors/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCustomCheckBox extends StatefulWidget {
  const MyCustomCheckBox({super.key});

  @override
  State<MyCustomCheckBox> createState() => _MyCustomCheckBoxState();
}

class _MyCustomCheckBoxState extends State<MyCustomCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
      },
      child: Container(
        height: 20.h,
        width: 20.w,
        decoration: BoxDecoration(
          color: isChecked ? primaryColor : white,
          border: Border.all(
            color: iconColor,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(2),
        ),
        child: isChecked
            ? const Icon(
                Icons.check,
                size: 15.0,
                color: white,
              )
            : null,
      ),
    );
  }
}
