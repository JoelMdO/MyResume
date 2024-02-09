import 'package:flutter/material.dart';
import 'package:resume/presentation/pages/page_1_home/text/titles/title_text_styles.dart';
import 'package:resume/utils/constants/screen_size.dart';

// TITLE PROJECTS //
// ignore: must_be_immutable
class TitleText extends StatelessWidget {
  String type, name;
  TitleText({super.key, required this.type, required this.name});

  String title = '';
  double posLeft = 0;
  double posTop = 0;
  double posRight = 0;
  bool isMobileContent = false;

  @override
  Widget build(BuildContext context) {
    ScreenType screenType = ScreenType(context);

    if (type == 'mobile-content') {
      isMobileContent = true;
    } else if (type == 'mobile-index') {
      isMobileContent = false;
    } else {
      isMobileContent = false;
    }

    switch (name) {
      case 'career':
        title = 'Career Summary';
        posTop = screenType.isMobile ? 90 : 50;
        posLeft = screenType.isMobile ? 180 : 270;
        break;
      case 'techstack':
        title = 'TechStack';
        posTop = 120;
        posLeft = 250;

        break;
      case 'projects':
        title = 'Projects';
        posTop = isMobileContent ? 0 : 50;
        posLeft = 170;
        posRight = 0;
    }
    return
// Title Text [FittedBox] to maintain size when changing with screen size
        FittedBox(
      fit: BoxFit.contain,
      child: Padding(
        padding: isMobileContent
            ? EdgeInsets.only(top: posTop, right: posRight)
            : EdgeInsets.only(top: posTop, left: posLeft),
        child: Text(title).titleStyle(),
      ),
    );
  }
}
