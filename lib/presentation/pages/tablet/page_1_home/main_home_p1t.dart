import 'package:flutter/material.dart';
import 'package:resume/presentation/pages/tablet/page_1_home/bottom_column_p1t/main_bottom_column_p1t.dart';
import 'package:resume/presentation/pages/tablet/page_1_home/top_column_p1t/main_top_column_p1t.dart';
import 'package:resume/presentation/widgets/drawer/drawer_shape.dart';

class HomePageTablet extends StatefulWidget {
  const HomePageTablet({super.key});

  @override
  State<HomePageTablet> createState() => _HomePageTabletState();
}

class _HomePageTabletState extends State<HomePageTablet> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

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
                    width: screenWidth,
                    height: screenHeight * 0.72,
                    child: const TopColumnTablet()),
                SizedBox(
                    width: screenWidth,
                    height: screenHeight * 0.28,
                    child: const BottomColumnTablet()),
              ]),
        ),
        drawer: const DrawerShape());
  }
}
