import 'package:flutter/material.dart';
import 'package:resume/presentation/pages/desktop/page_1_home/left%20column/main_left_column_p1d.dart';
import 'package:resume/presentation/widgets/buttons/download_button.dart';
import 'package:resume/presentation/widgets/drawer/shape_drawer.dart';
import 'package:resume/presentation/widgets/titles/title_home.dart';
import 'package:resume/presentation/pages/desktop/page_1_home/right_column/main_right_column_p1d.dart';
import 'package:resume/presentation/widgets/profile_id_image.dart';

class HomePageDesktop extends StatefulWidget {
  const HomePageDesktop({super.key});

  @override
  State<HomePageDesktop> createState() => _HomePageDesktopState();
}

class _HomePageDesktopState extends State<HomePageDesktop> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/FirstBackgroundLeftSide.png'),
              fit: BoxFit.fill),
        ),
        child: Stack(
            alignment: AlignmentDirectional.topStart,
            fit: StackFit.loose,
            children: [
              //Title Text
              Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    width: screenWidth * 0.65,
                    height: screenHeight * 0.35,
                    child: const TituloHome(),
                  )),
              //Download Button
              const Align(
                alignment: Alignment.center,
                child: DownloadButton(),
              ),
              //Left Column
              const Align(
                  alignment: AlignmentDirectional.center,
                  child: LeftColumnDesktop()),
              //Profile ID Image
              const Positioned(top: 420, right: 300, child: ProfileIDImage()),
              //Right Column
              Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: SizedBox(
                      width: screenWidth * 0.3,
                      height: screenHeight,
                      child: const RightColumnDesktop())),
            ]),
      ),
      drawer: const DrawerShape(),
    );
  }
}
