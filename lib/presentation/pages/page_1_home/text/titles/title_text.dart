import 'package:flutter/material.dart';
import 'package:resume/utils/constants/mixin/title_position_mixin.dart';
import 'package:resume/presentation/pages/page_1_home/text/titles/title_text_styles.dart';

// TITLE PROJECTS //
// ignore: must_be_immutable
class TitleText extends StatelessWidget with TitlePosition {
  String type, name;
  TitleText({super.key, required this.type, required this.name});

  bool isMobileContent = false;

  @override
  Widget build(BuildContext context) {
    if (type == 'mobile-content') {
      isMobileContent = true;
    }

    return
// Title Text [FittedBox] to maintain size when changing with screen size
        FittedBox(
      fit: BoxFit.contain,
      child: Padding(
        padding: isMobileContent
            ? EdgeInsets.only(top: topPosition(context, type, name), right: 0)
            : EdgeInsets.only(
                top: topPosition(context, type, name),
                left: leftPosition(context, name)),
        child: Text(title(name)).titleStyle(),
      ),
    );
  }
}
