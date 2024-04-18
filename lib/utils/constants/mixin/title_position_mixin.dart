import 'package:flutter/material.dart';
import 'package:resume/utils/constants/screen_size.dart';

mixin TitlePosition {
  double topPosition(BuildContext context, String type, String name) {
    ScreenType screenType = ScreenType(context);

    switch (name) {
      case 'career':
        return screenType.isMobile ? 90 : 50;
      case 'techstack':
        return 120;
      case 'projects':
        if (type == 'isMobileContent') {
          return 0;
        } else {
          return 50;
        }
    }
    return 0;
  }

  double leftPosition(BuildContext context, String name) {
    ScreenType screenType = ScreenType(context);
    //
    switch (name) {
      case 'career':
        return screenType.isMobile ? 180 : 270;
      case 'techstack':
        return 250;
      case 'projects':
        return 170;
    }
    return 0;
  }

  String title(String name) {
    switch (name) {
      case 'career':
        return 'Career Summary';
      case 'techstack':
        return 'TechStack';
      case 'projects':
        return 'Projects';
    }
    return '';
  }
}
