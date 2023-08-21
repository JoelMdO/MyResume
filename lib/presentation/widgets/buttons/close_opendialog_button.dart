import 'package:flutter/material.dart';
import 'package:resume/config/responsive_routes.dart';
import 'package:resume/presentation/widgets/dialogs/opendialog_text_styles.dart';
import 'package:resume/utils/constants/colors.dart';

// ignore: must_be_immutable
class CloseButtonOpenDialog extends StatelessWidget {
  CloseButtonOpenDialog({super.key});

  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
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
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => const ResponsiveHomePage(
                          nameRoute: '/',
                        )));
          },
          child: const Text('CLOSE').openDialogButtonStyle(),
        ),
      );
    });
  }
}
