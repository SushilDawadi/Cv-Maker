import 'package:cv_maker/components/custom/my_custom_app_bar.dart';
import 'package:flutter/material.dart';

class MyCustomTabBar extends StatelessWidget {
  const MyCustomTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: MyCustomAppBar(
            showDropButton: false,
            showUserDetails: true,
          ),
        ));
  }
}
