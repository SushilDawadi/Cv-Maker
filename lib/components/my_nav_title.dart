import 'package:cv_maker/utils/imagePath.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyNavTitle extends StatefulWidget {
  const MyNavTitle({super.key});

  @override
  State<MyNavTitle> createState() => _MyNavTitleState();
}

class _MyNavTitleState extends State<MyNavTitle> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: navTitles.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Padding(
                  padding: EdgeInsets.only(right: 38.w, top: 29.h),
                  child: Text(
                    navTitles[index],
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: index == selectedIndex
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
