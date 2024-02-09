import 'package:flutter/material.dart';
import 'package:resume/presentation/pages/page_1_home/tablet/bottom_column_p1t/main_bottom_column_p1t.dart';
import 'package:resume/presentation/pages/page_1_home/tablet/top_column_p1t/main_top_column_p1t.dart';
import 'package:resume/presentation/widgets/drawer/shape_drawer.dart';
import 'package:resume/utils/constants/screen_size.dart';

class HomePageTablet extends StatefulWidget {
  const HomePageTablet({super.key});

  @override
  State<HomePageTablet> createState() => _HomePageTabletState();
}

class _HomePageTabletState extends State<HomePageTablet> {
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
                    height: myScreenSize.screenHeight * 0.72,
                    child: const TopColumnTablet()),
                SizedBox(
                    width: myScreenSize.screenWidth,
                    height: myScreenSize.screenHeight * 0.28,
                    child: const BottomColumnTablet()),
              ]),
        ),
        drawer: const DrawerShape());
  }
}
