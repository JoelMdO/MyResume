import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/drawer/drawer_shape.dart';
import 'package:resume/presentation/widgets/buttons/float_button.dart';
import 'package:resume/presentation/widgets/buttons/projects_button.dart';
import 'package:resume/presentation/widgets/titles/title_career.dart';
import 'package:resume/presentation/widgets/pages_text/career_text.dart';

class CareerPageTablet extends StatefulWidget {
  const CareerPageTablet({super.key});

  @override
  State<CareerPageTablet> createState() => _CareerPageTabletState();
}

class _CareerPageTabletState extends State<CareerPageTablet> {
  bool isExpanded = false;
//  get isLastExpanded => isExpanded;

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
                  image: AssetImage('assets/images/Background2.png'),
                  fit: BoxFit.fill),
            ),
            child: SizedBox(
              width: screenWidth,
              height: screenHeight,
              child: Stack(
                alignment: AlignmentDirectional.topStart,
                fit: StackFit.loose,
                children: [
                  SingleChildScrollView(
                      child: Column(children: <Widget>[
                    const TituloCareer(),
                    //Career Text
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                          width: screenWidth * 0.95,
                          child: CareerText(onExpansionChanged: (expanded) {
                            setState(() {
                              isExpanded = expanded;
                            });
                          })),
                    ),
                    const Padding(padding: EdgeInsets.only(bottom: 25)),
                  ])),
                  Positioned(
                      bottom: 50,
                      left: 5,
                      child: BounceInRight(
                        delay: const Duration(seconds: 6),
                        duration: const Duration(seconds: 1),
                        child: Visibility(
                            visible: isExpanded,
                            child: const ProjectsNavigationButton()),
                      )),
                ],
              ),
            )),
        drawer: const DrawerShape());
  }
}
