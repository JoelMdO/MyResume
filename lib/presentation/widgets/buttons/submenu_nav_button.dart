import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resume/cubit/routes_cubit.dart';
import 'package:resume/presentation/widgets/buttons/styles_text_buttons.dart';
import 'package:resume/presentation/widgets/dialogs/opendialog_cess.dart';
import 'package:resume/utils/constants/colors.dart';

class SubMenuNavigationButton extends StatefulWidget {
  /// Button to take it to the Career section [CareerPage] in the Resume
  /// and as well to the Education section [OpenDialogCESS] receives the value
  /// of type according to the section

  final String type;
  const SubMenuNavigationButton({super.key, required this.type});

  @override
  State<SubMenuNavigationButton> createState() =>
      _SubMenuNavigationButtonState();
}

class _SubMenuNavigationButtonState extends State<SubMenuNavigationButton> {
  bool isHovered = false;
  final scaleNormal = Matrix4.identity();
  final scaleUp = Matrix4.identity()..scale(1.2);
  late String route, title;
  bool isEducation = false;

  @override
  Widget build(BuildContext context) {
    switch (widget.type) {
      case 'career':
        title = 'Access CAREER Summary';
        route = '/career';
        isEducation = false;
      case 'education':
        title = 'Access EDUCATION Summary';
        isEducation = true;
    }

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
                isEducation
                    ? OpenDialogCESS.openD(context, widget.type)
                    : context.read<NavigationCubit>().navigateTo(route);
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
              child: Text(title).projectsButtonTitleTextStyle(),
            )));
  }
}
