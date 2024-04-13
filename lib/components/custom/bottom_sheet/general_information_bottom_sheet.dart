import 'package:cv_maker/components/custom/bottom_sheet/details_container.dart';
import 'package:cv_maker/components/custom/bottom_sheet/general_example_container.dart';
import 'package:cv_maker/components/custom/heading/help_with_example.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyGeneralBottomSheetContent extends StatefulWidget {
  @override
  _MyGeneralBottomSheetContentState createState() =>
      _MyGeneralBottomSheetContentState();
}

class _MyGeneralBottomSheetContentState
    extends State<MyGeneralBottomSheetContent>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.r),
        topRight: Radius.circular(30.r),
      ),
      child: Padding(
        padding: const EdgeInsets.only(),
        child: Column(
          children: [
            const HelpWithExamples(),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 70.w),
              child: TabBar(
                controller: _tabController,
                labelColor: Colors.black,
                labelStyle: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
                indicatorColor: Colors.transparent,
                unselectedLabelColor: Colors.black38,
                tabs: [
                  const Tab(
                    text: 'Details',
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.h),
                    child: const Tab(
                      text: 'Example',
                    ),
                  ),
                ],
              ),
            ),
            // tab bar view here
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  // first tab bar view widget
                  DetailsContainer(
                    subText:
                        "Your general information should include your contact information ",
                    contentText:
                        "Required fields:\n 1. First Name \n2. Last Name \n3. AddressPhone \n4. NumberEmail \n5. Address",
                  ),
                  GeneralExampleContainer(),
                  // second tab bar view widget
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
// In objective, you can write a very short description about you explaining how you are motivated, skilled and passionate about the topic that you are applying to and what make you the best fit for it. The objective should be around 600-700 characters.