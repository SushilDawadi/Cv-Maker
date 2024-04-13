import 'package:carousel_slider/carousel_slider.dart';
import 'package:cv_maker/components/custom/app_bar/my_custom_app_bar.dart';
import 'package:cv_maker/components/custom/button/my_custom_botton.dart';
import 'package:cv_maker/pages/authview/template_selected_page.dart';
import 'package:cv_maker/utils/utils_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TemplateCarousel extends StatefulWidget {
  const TemplateCarousel({super.key});

  @override
  State<TemplateCarousel> createState() => _TemplateCarouselState();
}

class _TemplateCarouselState extends State<TemplateCarousel> {
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyCustomAppBar(
        showDropButton: false,
        showUserDetails: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: Get.height * 0.05,
              ),
              Center(
                child: CarouselSlider(
                  carouselController: _controller,
                  items: Utils.imgPath
                      .map(
                        (e) => Image.asset(
                          e,
                          fit: BoxFit.fill,
                          width: 354.w,
                          height: 500.h,
                        ),
                      )
                      .toList(),
                  options: CarouselOptions(
                      enlargeCenterPage: true,
                      viewportFraction: 0.9,
                      height: 500.h),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  MyButton(
                    onPressed: () {
                      _controller.previousPage();
                    },
                    showIcon: true,
                    icon: Icons.arrow_back_ios_rounded,
                    fontSize: 20.sp,
                    value: 0.14,
                    borderColor: true,
                    text: '',
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7.0),
                    child: MyButton(
                      showIcon: false,
                      text: "Use",
                      value: 0.51,
                      fontSize: 20.sp,
                      borderColor: false,
                      onPressed: () => Get.to(() => const TemplateSelected()),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 100.h),
                    child: MyButton(
                      onPressed: () {
                        _controller.nextPage();
                      },
                      showIcon: true,
                      icon: Icons.arrow_forward_ios_rounded,
                      fontSize: 20.sp,
                      value: 0.14,
                      borderColor: true,
                      text: '',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
