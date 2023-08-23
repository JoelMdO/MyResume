import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/buttons/styles_text_buttons.dart';
import 'package:resume/utils/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

/// Download Button for resume downloading from Google Drive
class DownloadButton extends StatelessWidget {
  const DownloadButton({super.key});

  final String url =
      'https://drive.google.com/file/d/1dogw2Kx8sH66A5o79r2m-WegQm4ZKkw4/view?usp=sharing';

  Future<void> _launchURL(String url) async {
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isHovered = false;

    return StatefulBuilder(builder: (context, setState) {
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
              _launchURL(url);
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
            child: const Text('Download Resume').downloadButtonTitleTextStyle(),
          ));
    });
  }
}
