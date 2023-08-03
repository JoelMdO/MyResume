import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/drawer/drawer_shape.dart';
import 'package:resume/presentation/widgets/buttons/float_button.dart';
import 'package:resume/presentation/widgets/buttons/projects_button.dart';
import 'package:resume/presentation/widgets/titles/title_career.dart';
import 'package:resume/presentation/widgets/pages_text/career_text.dart';

class CareerPageDesktop extends StatefulWidget {
  const CareerPageDesktop({super.key});

  @override
  State<CareerPageDesktop> createState() => _CareerPageDesktopState();
}

class _CareerPageDesktopState extends State<CareerPageDesktop> {
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
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                      const TituloCareer(),
                      const Padding(padding: EdgeInsets.only(top: 35)),
                      CareerText(onExpansionChanged: (expanded) {
                        setState(() {
                          isExpanded = expanded;
                        });
                      }),
                      const Padding(padding: EdgeInsets.only(bottom: 25)),
                      const Align(
                          alignment: Alignment.center,
                          child: ProjectsNavigationButton()),
                      const Padding(padding: EdgeInsets.only(bottom: 10)),
                    ])),
              ],
            ),
          )),
      drawer: const DrawerShape(),
    );
  }
}
