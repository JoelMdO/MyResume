import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/profile_id_image.dart';
import 'package:resume/presentation/widgets/bar_menu/bar_career_p1d.dart';
import 'package:resume/presentation/widgets/bar_menu/bar_education_techstack_p1d.dart';
import 'package:resume/presentation/widgets/bar_menu/bar_skills_p1d.dart';
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
                  child: const SkillsBarP1D()),
            ),
//Education
            Positioned(
              top: 255,
              left: 200,
              child: SizedBox(
                  width: screenWidth * 0.3,
                  height: screenHeight * 0.3,
                  child: const EducationBarP1D()),
            ),
//Career
            Positioned(
              top: 345,
              left: 370,
              child: SizedBox(
                  width: screenWidth * 0.3,
                  height: screenHeight * 0.3,
                  child: const CareerBarP1D()),
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
