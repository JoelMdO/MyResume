import 'package:flutter/material.dart';
import 'package:resume/presentation/pages/mobile/page_4_projects/main_projects_p4m.dart';
import 'package:resume/presentation/pages/desktop/page_4_projects/main_projects_p4d.dart';
import 'package:resume/presentation/pages/tablet/page_4_projects/main_projects_p4t.dart';
import 'package:resume/utils/constants/colors.dart';

/// Button to take it to the Projects Summary Part in the Resume
class ProjectsNavigationButton extends StatefulWidget {
  const ProjectsNavigationButton({super.key});

  @override
  State<ProjectsNavigationButton> createState() =>
      _ProjectsNavigationButtonState();
}

class _ProjectsNavigationButtonState extends State<ProjectsNavigationButton> {
  bool isHovered = false;
  final scaleNormal = Matrix4.identity();
  final scaleUp = Matrix4.identity()..scale(1.2);

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 920;
    final isTablet = MediaQuery.of(context).size.width >= 767;

    return MouseRegion(

        /// [MouseRegion] transform the size on hovered + mouse region function
        onEnter: (event) {
          setState(() {
            isHovered = true;
          });
        },
        onExit: (event) {
          setState(() {
            isHovered = false;
          });
        },
        child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            transform: isHovered ? scaleUp : scaleNormal,
            child: ElevatedButton(
//[Navigator] to navigate to the route pojects
                onPressed: () {
                  if (isDesktop) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ProjectsPageDesktop()));
                  } else if (isTablet) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                const ProjectsPageTablet()));
                  } else {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ProjectsPageMobile()));
                  }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colores.darkblue,
                    shadowColor: Colors.black54,
                    padding: const EdgeInsets.all(16.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: const BorderSide(
                          color: Colores.yellow, // Set the border color
                          width: 2.0, // Set the border width
                        ))),
                child: const Text(
                  'Access PROJECTS summary',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold),
                ))));
  }
}
