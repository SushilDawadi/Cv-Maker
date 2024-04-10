import 'package:cv_maker/utils/utilsClass.dart';
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
              itemCount: Utils.navTitles.length,
              itemBuilder: (context, index) {
                final navKeys = Utils.navTitles.keys.toList();
                final navValues = Utils.navTitles.values.toList();

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => navValues[index],
                        ),
                      );
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: 38.w, top: 29.h),
                    child: Text(
                      navKeys[index],
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: index == selectedIndex
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
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
