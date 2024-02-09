import 'package:flutter/material.dart';
import 'package:resume/presentation/pages/page_1_home/mobile/bottom_column/main_bottom_column_p1.dart';
import 'package:resume/utils/constants/screen_size.dart';
import 'top_column/main_top_column_p1.dart';

class HomePageMobile extends StatefulWidget {
  const HomePageMobile({super.key});

  @override
  State<HomePageMobile> createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  @override
  Widget build(BuildContext context) {
    ScreenSize myScreenSize = ScreenSize(context);

    return Scaffold(
        //body//
        body: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/FirstBackgroundLeftSide.png'),
            fit: BoxFit.fill),
      ),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                width: myScreenSize.screenWidth,
                height: myScreenSize.screenHeight * 0.80,
                child: const TopColumn()),
            SizedBox(
                width: myScreenSize.screenWidth,
                height: myScreenSize.screenHeight * 0.20,
                child: const BottomColumn()),
          ]),
    ));
  }
}
