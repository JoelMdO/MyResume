import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/drawer/drawer_shape.dart';
import 'package:resume/presentation/widgets/buttons/float_button.dart';
import 'package:resume/presentation/widgets/titles/title_projects.dart';
import 'package:resume/presentation/widgets/pages_text/projects_text.dart';

class ProjectsPageDesktop extends StatefulWidget {
  const ProjectsPageDesktop({super.key});

  @override
  State<ProjectsPageDesktop> createState() => _ProjectsPageDesktopState();
}

class _ProjectsPageDesktopState extends State<ProjectsPageDesktop> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;

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
            height: screenheight,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const TituloProjects(),
                  const Padding(padding: EdgeInsets.only(top: 20)),
                  ProjectText(onExpansionChanged: (expanded) {
                    setState(() {
                      isExpanded = expanded;
                    });
                  }),
                ],
              ),
            )),
      ),
      drawer: const DrawerShape(),
    );
  }
}
