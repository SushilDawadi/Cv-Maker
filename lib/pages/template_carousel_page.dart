import 'package:carousel_slider/carousel_slider.dart';
import 'package:cv_maker/components/custom/my_custom_app_bar.dart';
import 'package:cv_maker/components/custom/my_custom_botton.dart';
import 'package:cv_maker/utils/utils_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.8.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Center(
                  child: CarouselSlider(
                    carouselController: _controller,
                    items: Utils.imgPath
                        .map(
                          (e) => Image.asset(
                            e,
                            fit: BoxFit.cover,
                          ),
                        )
                        .toList(),
                    options: CarouselOptions(
                      enlargeCenterPage: true,
                    ),
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
                      borderColor: false,
                      text: '',
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7.0),
                      child: MyButton(
                        showIcon: false,
                        text: "Use",
                        value: 0.51,
                        fontSize: 20.sp,
                        borderColor: true,
                      ),
                    ),
                    MyButton(
                      onPressed: () {
                        _controller.nextPage();
                      },
                      showIcon: true,
                      icon: Icons.arrow_forward_ios_rounded,
                      fontSize: 20.sp,
                      value: 0.14,
                      borderColor: false,
                      text: '',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
