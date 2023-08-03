import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/drawer/drawer_shape.dart';
import 'package:resume/presentation/widgets/buttons/float_button.dart';
import 'package:resume/presentation/widgets/titles/title_projects.dart';
import 'package:resume/presentation/widgets/pages_text/projects_text.dart';

class ProjectsPageTablet extends StatefulWidget {
  const ProjectsPageTablet({super.key});

  @override
  State<ProjectsPageTablet> createState() => _ProjectsPageTabletState();
}

class _ProjectsPageTabletState extends State<ProjectsPageTablet> {
  @override
  Widget build(BuildContext context) {
    bool isExpanded = false;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
// [FloatingAction Button and SpeeDial] TO PLACE SEVERAL FLOATING ACTION BUTTONS
        floatingActionButton:
            Visibility(visible: isExpanded, child: const FloatButton()),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/Background 4.png'),
                fit: BoxFit.fill),
          ),
          child: SizedBox(
              width: screenWidth,
              height: screenheight,
              child: SingleChildScrollView(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    const TituloProjects(),
                    ProjectText(onExpansionChanged: (expanded) {
                      setState(() {
                        isExpanded = expanded;
                      });
                    }),
                  ],
                ),
              )),
        ),
        drawer: Visibility(visible: isExpanded, child: const DrawerShape()));
  }
}
