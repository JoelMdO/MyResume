import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/dialogs/opendialog_education.dart';
import 'package:resume/utils/constants/colors.dart';

/// Button to take it to the Education Summay Part in the Resume
class EducationNavigationButton extends StatefulWidget {
  const EducationNavigationButton({super.key});

  @override
  State<EducationNavigationButton> createState() =>
      _EducationNavigationButtonState();
}

class _EducationNavigationButtonState extends State<EducationNavigationButton> {
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

            ///[opendialog] to load as mentioned instead of open a new page the dialog has the main education facts
            onPressed: () {
              OpenDialogEducation.openED(context);
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colores.darkblue,
                shadowColor: Colors.black54,
                padding: const EdgeInsets.all(16.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    side: const BorderSide(
                      color: Colores.yellow,
                      width: 2.0,
                    )),
                elevation: 5),
            child: const Text(
              'Access EDUCATION summary',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
