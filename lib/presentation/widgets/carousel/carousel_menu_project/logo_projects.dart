import 'package:flutter/material.dart';

class LogoProjects extends StatelessWidget {
  final String type;
  final double width, height;

  const LogoProjects(
      {super.key,
      required this.type,
      required this.width,
      required this.height});

  @override
  Widget build(BuildContext context) {
    late String logo;

    switch (type) {
      case 'flutter':
        logo = 'assets/images/flutter.png';
        break;
      case 'react':
        logo = 'assets/images/react.png';
        break;
      case 'nodejs':
        logo = 'assets/images/nodejs.png';
        break;
      case 'figma':
        logo = 'assets/images/figma.png';
        break;
      case 'aviation':
        logo = 'assets/images/airplane_green.png';
        break;
      case 'in-progress':
        logo = 'assets/images/under_dev.png';
        break;
      case 'repo':
        logo = 'assets/images/github-logo.png';
        break;
    }
    return SizedBox(
      width: width,
      height: height,
      child: Image.asset(
        logo,
        fit: BoxFit.contain,
      ),
    );
  }
}
