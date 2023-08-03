import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/drawer/drawer_shape.dart';
import 'package:resume/presentation/widgets/buttons/float_button.dart';
import 'package:resume/presentation/widgets/titles/title_projects.dart';
import 'package:resume/presentation/widgets/pages_text/projects_text.dart';

class ProjectsPageMobile extends StatefulWidget {
  const ProjectsPageMobile({super.key});

  @override
  State<ProjectsPageMobile> createState() => _ProjectsPageMobileState();
}

class _ProjectsPageMobileState extends State<ProjectsPageMobile> {
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
                  const TituloProjects(),
                  Positioned(
                      top: 180,
                      left: 20,
                      child: SizedBox(
                        width: screenWidth * 0.85,
                        height: screenHeight * 0.70,
                        child: ProjectText(onExpansionChanged: (expanded) {
                          setState(() {
                            isExpanded = expanded;
                          });
                        }),
                      ))
                ],
              ),
            )),
        drawer: const DrawerShape());
  }
}
