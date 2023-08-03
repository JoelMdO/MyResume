import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/buttons/education_navigation_button.dart';
import 'package:resume/presentation/widgets/graphics_techstack/group_graphic.dart';
import 'package:resume/presentation/widgets/drawer/drawer_shape.dart';
import 'package:resume/presentation/widgets/buttons/float_button.dart';
import 'package:resume/presentation/widgets/titles/title_techstack.dart';

class TechStackPageTablet extends StatefulWidget {
  const TechStackPageTablet({super.key});

  @override
  State<TechStackPageTablet> createState() => _TechStackPageTabletState();
}

class _TechStackPageTabletState extends State<TechStackPageTablet> {
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
                image: AssetImage('assets/images/Third%20Background.png'),
                fit: BoxFit.fill),
          ),
          child: Stack(
              alignment: AlignmentDirectional.topStart,
              fit: StackFit.loose,
              children: [
                const TitleTechStack(),
                Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                        width: screenWidth * 0.95,
                        height: screenHeight * 0.95,
                        child: const GraphicGroup())),
                //BUTTON FOR EDUCATION //
                Positioned(
                    bottom: 50,
                    left: 200,
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
