import 'package:flutter/material.dart';
import 'package:resume/presentation/pages/page_1_home/text/titles/title_home.dart';
import 'package:resume/presentation/widgets/buttons/bar_menu/bar_button.dart';
import 'package:resume/presentation/widgets/profile_id_image.dart';
import 'package:resume/utils/constants/screen_size.dart';

class TopColumnTablet extends StatefulWidget {
  const TopColumnTablet({super.key});

  @override
  State<TopColumnTablet> createState() => _TopColumnTabletState();
}

class _TopColumnTabletState extends State<TopColumnTablet> {
  @override
  Widget build(BuildContext context) {
    ScreenSize myScreenSize = ScreenSize(context);

    return SizedBox(
      width: myScreenSize.screenWidth,
      child: Stack(
          fit: StackFit.loose,
          alignment: AlignmentDirectional.topStart,
          children: [
//Titulo
            Positioned(
                top: 15,
                right: 15,
                child: SizedBox(
                    width: myScreenSize.screenWidth * 0.7,
                    height: myScreenSize.screenHeight * 0.4,
                    child: const TituloHome())),
//Skills
            Positioned(
              top: 165,
              left: 10,
              child: SizedBox(
                  width: myScreenSize.screenWidth * 0.3,
                  height: myScreenSize.screenHeight * 0.3,
                  child: const BarButton(
                    type: 'SKILLS &\n STRENGTHS',
                  )),
            ),
//Education
            Positioned(
              top: 255,
              left: 200,
              child: SizedBox(
                  width: myScreenSize.screenWidth * 0.3,
                  height: myScreenSize.screenHeight * 0.3,
                  child: const BarButton(
                    type: 'EDUCATION & \n TECH STACK',
                  )),
            ),
//Career
            Positioned(
              top: 345,
              left: 370,
              child: SizedBox(
                  width: myScreenSize.screenWidth * 0.3,
                  height: myScreenSize.screenHeight * 0.3,
                  child: const BarButton(
                    type: 'PROJECTS &\n CAREER',
                  )),
            ),
//Profile ID
            const Positioned(right: 5, top: 250, child: ProfileIDImage()),
          ]),
    );
    // ))
  }
}
