import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/buttons/styles_text_buttons.dart';
import 'package:resume/utils/constants/colors.dart';
import 'package:resume/utils/constants/mixin/buttons_mixin.dart';

/// Download Button for resume downloading from Google Drive
class DownloadButton extends StatelessWidget with ButtonsMixin {
  const DownloadButton({super.key});

  @override
  Widget build(BuildContext context) {
    bool isHovered = false;

    return FittedBox(
        fit: BoxFit.fitWidth,
        child: StatefulBuilder(builder: (context, setState) {
          return MouseRegion(
              cursor: SystemMouseCursors.click,
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
              child: ElevatedButton(
                onPressed: () {
                  launchToUrl('download');
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colores.darkblue,
                    shadowColor: Colors.black54,
                    padding: const EdgeInsets.all(16.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(
                          color: isHovered
                              ? Colores.green
                              : Colores.yellow, // Set the border color
                          width: 2.0, // Set the border width
                        ))),
                child: const AutoSizeText('Download Resume')
                    .downloadButtonTitleTextStyle(),
              ));
        }));
  }
}
