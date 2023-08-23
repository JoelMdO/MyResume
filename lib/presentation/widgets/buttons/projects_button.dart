import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resume/cubit/routes_cubit.dart';
import 'package:resume/presentation/widgets/buttons/styles_text_buttons.dart';
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
                context.read<NavigationCubit>().navigateTo('/projects');
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
              child: const Text('Access PROJECTS summary')
                  .projectsButtonTitleTextStyle(),
            )));
  }
}
