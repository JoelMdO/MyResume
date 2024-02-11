import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:resume/presentation/pages/page_2_techstack/graphic_shape/library_lenguages.dart';
import 'package:resume/presentation/pages/page_2_techstack/graphic_shape/text_styles_techstack.dart';
import 'package:resume/utils/constants/screen_size.dart';

// ignore: must_be_immutable
class TextTech extends StatefulWidget {
  String type;
  TextTech({super.key, required this.type});

  @override
  State<TextTech> createState() => _TextTechState();
}

class _TextTechState extends State<TextTech> {
  bool animationStarted = false;
  double topValue = 0;
  double leftValue = 0;
  dynamic textStyle;
  late AutoSizeText textTypeOther;
  late AutoSizeText textType;

  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 3500), () {
      setState(() {
        animationStarted = true;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    animationStarted;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenType myScreenType = ScreenType(context);

    switch (widget.type) {
      case 'UX':
        topValue = myScreenType.isDesktop
            ? 275
            : myScreenType.isTablet
                ? 225
                : 205;
        //LEFT VALUE
        leftValue = myScreenType.isDesktop
            ? 155
            : myScreenType.isTablet
                ? 135
                : myScreenType.isMiniMobile
                    ? 65
                    : 55;
        textType = AutoSizeText(uxText);
        textStyle = textType.uxTechStackStyle();

      case 'Code':
        topValue = myScreenType.isDesktop
            ? 275
            : myScreenType.isTablet
                ? 225
                : 205;
        //LEFT VALUE
        leftValue = myScreenType.isDesktop
            ? 570
            : myScreenType.isTablet
                ? 450
                : myScreenType.isMiniMobile
                    ? 240
                    : 260;
        textType = AutoSizeText(codeText);
        textStyle = textType.codeTechStackStyle();

      case 'Data':
        topValue = myScreenType.isDesktop
            ? 470
            : myScreenType.isTablet
                ? 400
                : myScreenType.isMiniMobile
                    ? 350
                    : 400;
        //LEFT VALUE
        leftValue = myScreenType.isDesktop
            ? 350
            : myScreenType.isTablet
                ? 260
                : myScreenType.isMiniMobile
                    ? 100
                    : 150;
        textType = AutoSizeText(dataText);
        textStyle = textType.dataTechStackStyle();

      case 'Other':
        topValue = myScreenType.isDesktop
            ? 525
            : myScreenType.isTablet
                ? 450
                : myScreenType.isMiniMobile
                    ? 400
                    : 450;
        //LEFT VALUE
        leftValue = myScreenType.isDesktop
            ? 90
            : myScreenType.isTablet
                ? 70
                : myScreenType.isMiniMobile
                    ? 40
                    : 50;
        textTypeOther = AutoSizeText(othersText);
        textStyle = textTypeOther.otherTechStackStyle();
    }

    return Positioned(
      top: topValue,
      left: leftValue,
      child: AnimatedOpacity(
          opacity: animationStarted ? 1.0 : 0,
          duration:
              Duration(milliseconds: 1000 + (animationStarted ? 0 : 1500)),
          child: textStyle),
    );
  }
}
