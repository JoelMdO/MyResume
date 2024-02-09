import 'package:flutter/material.dart';
import 'package:resume/config/responsive_routes.dart';
import 'package:resume/presentation/widgets/dialogs/opendialog_text_styles.dart';
import 'package:resume/utils/constants/colors.dart';

class CloseButtonOpenDialog extends StatefulWidget {
  final String type;
  const CloseButtonOpenDialog({super.key, required this.type});

  @override
  State<CloseButtonOpenDialog> createState() => _CloseButtonOpenDialogState();
}

class _CloseButtonOpenDialogState extends State<CloseButtonOpenDialog> {
  bool isHovered = false;
  bool isProjects = false;

  @override
  Widget build(BuildContext context) {
    if (widget.type == 'projects') {
      isProjects = true;
    } else {
      isProjects = false;
    }

    return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
      return MouseRegion(
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
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: isHovered ? Colores.darkblue : Colores.blue,
          ),
          onPressed: () {
            isProjects
                ? Navigator.pop(context)
                : Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const ResponsiveHomePage(
                              nameRoute: '/',
                            )));
          },
          child: const Text('CLOSE').openDialogButtonStyle(),
        ),
      );
    });
  }
}
