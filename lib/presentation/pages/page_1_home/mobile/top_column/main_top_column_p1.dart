import 'package:flutter/material.dart';
import 'package:resume/presentation/pages/page_1_home/text/titles/title_home.dart';
import 'package:resume/presentation/widgets/buttons/bar_menu/bar_button.dart';
import 'package:resume/presentation/widgets/profile_id_image.dart';
import 'package:resume/utils/constants/screen_size.dart';

class TopColumn extends StatefulWidget {
  const TopColumn({super.key});

  @override
  State<TopColumn> createState() => _TopColumnState();
}

class _TopColumnState extends State<TopColumn> {
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
                right: 10,
                child: SizedBox(
                    width: myScreenSize.screenWidth * 0.84,
                    height: myScreenSize.screenHeight * 0.4,
                    child: const TituloHome())),
            //Skills
            Positioned(
              top: 155,
              left: 10,
              child: SizedBox(
                  width: myScreenSize.screenWidth * 0.4,
                  height: myScreenSize.screenHeight * 0.4,
                  child: const BarButton(
                    type: 'SKILLS &\n STRENGTHS',
                  )),
            ),
            //Education
            Positioned(
              top: 245,
              left: 120,
              child: SizedBox(
                  width: myScreenSize.screenWidth * 0.4,
                  height: myScreenSize.screenHeight * 0.4,
                  child: const BarButton(
                    type: 'TECH STACK & \n EDUCATION  ',
                  )),
            ),
            //Career
            Positioned(
              top: 355,
              left: 220,
              child: SizedBox(
                  width: myScreenSize.screenWidth * 0.4,
                  height: myScreenSize.screenHeight * 0.35,
                  child: const BarButton(
                    type: 'PROJECTS',
                  )),
            ),
            //Profile ID
            const Positioned(right: 5, top: 200, child: ProfileIDImage()),
          ]),
    );
  }
}
