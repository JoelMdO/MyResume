import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/bar_menu/bar_career_p1d.dart';
import 'package:resume/presentation/widgets/bar_menu/bar_education_techstack_p1d.dart';
import 'package:resume/presentation/widgets/bar_menu/bar_skills_p1d.dart';

class LeftColumnDesktop extends StatefulWidget {
  const LeftColumnDesktop({super.key});

  @override
  State<LeftColumnDesktop> createState() => _LeftColumnDesktopState();
}

class _LeftColumnDesktopState extends State<LeftColumnDesktop> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Stack(
        alignment: AlignmentDirectional.topStart,
        fit: StackFit.loose,
        children: [
          //Skills Bar
          Positioned(
              top: 175,
              left: 10,
              child: SizedBox(
                  width: screenWidth * 0.3,
                  height: screenHeight * 0.3,
                  child: const SkillsBarP1D())),
          //Education Bar
          Positioned(
              top: 320,
              left: 120,
              child: SizedBox(
                  width: screenWidth * 0.3,
                  height: screenHeight * 0.3,
                  child: const EducationBarP1D())),
          //Career Bar
          Positioned(
              top: 470,
              left: 220,
              child: SizedBox(
                  width: screenWidth * 0.3,
                  height: screenHeight * 0.3,
                  child: const CareerBarP1D())),
        ]);
  }
}
