import 'package:flutter/material.dart';
import 'package:resume/presentation/pages/page_1_home/desktop/left%20column/main_left_column_p1d.dart';
import 'package:resume/presentation/pages/page_1_home/text/titles/title_home.dart';
import 'package:resume/presentation/widgets/buttons/download_button.dart';
import 'package:resume/presentation/widgets/drawer/shape_drawer.dart';
import 'package:resume/presentation/pages/page_1_home/desktop/right_column/main_right_column_p1d.dart';
import 'package:resume/presentation/widgets/profile_id_image.dart';
import 'package:resume/utils/constants/screen_size.dart';

class HomePageDesktop extends StatefulWidget {
  const HomePageDesktop({super.key});

  @override
  State<HomePageDesktop> createState() => _HomePageDesktopState();
}

class _HomePageDesktopState extends State<HomePageDesktop> {
  @override
  Widget build(BuildContext context) {
    ScreenSize myscreenSize = ScreenSize(context);

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
                    width: myscreenSize.screenWidth * 0.65,
                    height: myscreenSize.screenHeight * 0.35,
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
              const Positioned(top: 420, right: 420, child: ProfileIDImage()),
              //Right Column
              Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: SizedBox(
                      width: myscreenSize.screenWidth * 0.3,
                      height: myscreenSize.screenHeight,
                      child: const RightColumnDesktop())),
            ]),
      ),
      drawer: const DrawerShape(),
    );
  }
}
