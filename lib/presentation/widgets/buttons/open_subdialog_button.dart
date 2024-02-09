import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/dialogs/opendialog_cess.dart';
import 'package:resume/presentation/widgets/dialogs/opendialog_text_styles.dart';
import 'package:resume/utils/constants/colors.dart';

class ButtonOpenSubDialogs extends StatelessWidget {
  ///A button which is placed inside of Dialogs (Skills and TechStack) to
  ///to open the Strengths and Education, inside also of Education this same
  ///button will open the Certificates reason it requires a type to be received

  final String type;
  const ButtonOpenSubDialogs({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    bool isHovered = false;
    String title = '';

    switch (type) {
      case 'certificates':
        title = 'CERTIFICATES';
      case 'strengths':
        title = 'STRENGTHS';
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
              backgroundColor: isHovered ? Colores.blue : Colores.darkblue,
            ),
            onPressed: () {
              OpenDialogCESS.openD(context, type);
            },
            child: Text(title).openDialogButtonStyle(),
          ));
    });
  }
}
