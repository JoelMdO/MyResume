import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/buttons/education_navigation_button.dart';
import 'package:resume/presentation/widgets/graphics_techstack/group_graphic.dart';
import 'package:resume/presentation/widgets/drawer/drawer_shape.dart';
import 'package:resume/presentation/widgets/buttons/float_button.dart';
import 'package:resume/presentation/widgets/titles/title_techstack.dart';

class TechStackPageMobile extends StatefulWidget {
  const TechStackPageMobile({super.key});

  @override
  State<TechStackPageMobile> createState() => _TechStackPageMobileState();
}

class _TechStackPageMobileState extends State<TechStackPageMobile> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        floatingActionButton: const FloatButton(),
        body: Container(
          width: screenWidth,
          height: screenHeight,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/First Background.png'),
                fit: BoxFit.fill),
          ),
          child: Stack(
              alignment: AlignmentDirectional.topStart,
              fit: StackFit.loose,
              children: [
                Positioned(
                    top: 10,
                    left: 5,
                    child: SizedBox(
                        width: screenWidth * 0.9,
                        height: screenHeight * 0.30,
                        child: const TitleTechStack())),
                Align(
                  alignment: Alignment.center,
                  child:
                      SizedBox(width: screenWidth, child: const GraphicGroup()),
                ),
                //BUTTON FOR EDUCATION //
                Positioned(
                    bottom: 50,
                    left: 50,
                    child: BounceInRight(
                      delay: const Duration(seconds: 6),
                      duration: const Duration(seconds: 1),
                      child: const EducationNavigationButton(),
                    ))
              ]),
        ),
        drawer: const DrawerShape());
  }
}
