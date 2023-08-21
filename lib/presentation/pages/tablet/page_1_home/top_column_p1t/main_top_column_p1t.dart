import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/bar_menu/bar_button.dart';
import 'package:resume/presentation/widgets/profile_id_image.dart';
import 'package:resume/presentation/widgets/titles/title_home.dart';

class TopColumnTablet extends StatefulWidget {
  const TopColumnTablet({super.key});

  @override
  State<TopColumnTablet> createState() => _TopColumnTabletState();
}

class _TopColumnTabletState extends State<TopColumnTablet> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      width: screenWidth,
      child: Stack(
          fit: StackFit.loose,
          alignment: AlignmentDirectional.topStart,
          children: [
//Titulo
            Positioned(
                top: 15,
                right: 15,
                child: SizedBox(
                    width: screenWidth * 0.7, child: const TituloHome())),
//Skills
            Positioned(
              top: 165,
              left: 10,
              child: SizedBox(
                  width: screenWidth * 0.3,
                  height: screenHeight * 0.3,
                  child: const BarButton(
                    type: 'SKILLS &\n STRENGTHS',
                  )),
            ),
//Education
            Positioned(
              top: 255,
              left: 200,
              child: SizedBox(
                  width: screenWidth * 0.3,
                  height: screenHeight * 0.3,
                  child: const BarButton(
                    type: 'EDUCATION & \n TECH STACK',
                  )),
            ),
//Career
            Positioned(
              top: 345,
              left: 370,
              child: SizedBox(
                  width: screenWidth * 0.3,
                  height: screenHeight * 0.3,
                  child: const BarButton(
                    type: 'CAREER &\n PROJECTS',
                  )),
            ),
//Profile ID
            Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                    width: 180,
                    height: screenHeight * 0.3,
                    child: const ProfileIDImage())),
          ]),
    );
    // ))
  }
}
