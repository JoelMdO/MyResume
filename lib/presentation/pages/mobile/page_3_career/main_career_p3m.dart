import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/drawer/drawer_shape.dart';
import 'package:resume/presentation/widgets/buttons/float_button.dart';
import 'package:resume/presentation/widgets/buttons/projects_button.dart';
import 'package:resume/presentation/widgets/titles/title_career.dart';
import 'package:resume/presentation/widgets/pages_text/career_text.dart';

class CareerPageMobile extends StatefulWidget {
  const CareerPageMobile({super.key});

  @override
  State<CareerPageMobile> createState() => _CareerPageMobileState();
}

class _CareerPageMobileState extends State<CareerPageMobile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        floatingActionButton:
            Visibility(visible: isExpanded, child: const FloatButton()),
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/First Background.png'),
                  fit: BoxFit.fill),
            ),
            child: SizedBox(
              width: screenWidth * 0.95,
              height: screenHeight * 0.95,
              child: Stack(
                  alignment: AlignmentDirectional.topStart,
                  fit: StackFit.loose,
                  children: [
                    const TituloCareer(),
                    //Career Text

                    Positioned(
                      top: 150,
                      left: 20,
                      child: SizedBox(
                          width: screenWidth * 0.85,
                          height: screenHeight * 0.70,
                          child: CareerText(onExpansionChanged: (expanded) {
                            setState(() {
                              isExpanded = expanded;
                            });
                          })),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 70,
                        child: BounceInRight(
                          delay: const Duration(seconds: 6),
                          duration: const Duration(seconds: 1),
                          child: Visibility(
                              visible: isExpanded,
                              child: const ProjectsNavigationButton()),
                        )),
                  ]),
            )),
        drawer: const DrawerShape());
  }
}
