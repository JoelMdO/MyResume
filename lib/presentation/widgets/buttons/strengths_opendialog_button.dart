import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/dialogs/opendialog_strengths.dart';
import 'package:resume/presentation/widgets/dialogs/opendialog_text_styles.dart';
import 'package:resume/utils/constants/colors.dart';

// ignore: must_be_immutable
class StrengthsOpenButtonOpenDialog extends StatelessWidget {
  StrengthsOpenButtonOpenDialog({super.key});

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
              OpenDialogStrengths.openST(context);
            },
            child: const Text('STRENGTHS').openDialogButtonStyle(),
          ));
    });
  }
}
