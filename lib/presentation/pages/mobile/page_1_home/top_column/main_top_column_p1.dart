import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/bar_menu/bar_button.dart';
import 'package:resume/presentation/widgets/profile_id_image.dart';
import 'package:resume/presentation/widgets/titles/title_home.dart';

class TopColumn extends StatefulWidget {
  const TopColumn({super.key});

  @override
  State<TopColumn> createState() => _TopColumnState();
}

class _TopColumnState extends State<TopColumn> {
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
                right: 10,
                child: SizedBox(
                    width: screenWidth * 0.84,
                    height: screenHeight * 0.4,
                    child: const TituloHome())),
            //Skills
            Positioned(
              top: 155,
              left: 10,
              child: SizedBox(
                  width: screenWidth * 0.4,
                  height: screenHeight * 0.4,
                  child: const BarButton(
                    type: 'SKILLS &\n STRENGTHS',
                  )),
            ),
            //Education
            Positioned(
              top: 245,
              left: 120,
              child: SizedBox(
                  width: screenWidth * 0.4,
                  height: screenHeight * 0.4,
                  child: const BarButton(
                    type: 'EDUCATION & \n TECH STACK',
                  )),
            ),
            //Career
            Positioned(
              top: 355,
              left: 220,
              child: SizedBox(
                  width: screenWidth * 0.4,
                  height: screenHeight * 0.35,
                  child: const BarButton(
                    type: 'CAREER &\n PROJECTS',
                  )),
            ),
            //Profile ID
            const Positioned(right: 5, top: 200, child: ProfileIDImage()),
          ]),
    );
  }
}
