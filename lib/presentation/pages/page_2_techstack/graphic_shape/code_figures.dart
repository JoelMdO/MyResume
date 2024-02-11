import 'package:flutter/material.dart';
import 'package:resume/utils/constants/screen_size.dart';

// ignore: must_be_immutable
class CodeFigure extends StatefulWidget {
  String type;
  CodeFigure({super.key, required this.type});

  @override
  State<CodeFigure> createState() => _CodeFigureState();
}

class _CodeFigureState extends State<CodeFigure> {
  bool animationStarted = false;
  double topValue = 0;
  double leftValue = 0;
  String imageName = '';

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
            ? 230
            : myScreenType.isTablet
                ? 185
                : 175;
        //LEFT VALUE
        leftValue = myScreenType.isDesktop
            ? 70
            : myScreenType.isTablet
                ? 95
                : myScreenType.isMiniMobile
                    ? 5
                    : 25;
        imageName = 'images/UX_blue.png';

      case 'Code':
        topValue = myScreenType.isDesktop
            ? 230
            : myScreenType.isTablet
                ? 175
                : myScreenType.isMiniMobile
                    ? 167
                    : 175;
        //LEFT VALUE
        leftValue = myScreenType.isDesktop
            ? 770
            : myScreenType.isTablet
                ? 630
                : myScreenType.isMobile
                    ? 375
                    : myScreenType.isMiniMobile
                        ? 325
                        : 355;
        imageName = 'images/code_orange.png';

      case 'Data':
        topValue = myScreenType.isDesktop
            ? 455
            : myScreenType.isTablet
                ? 395
                : myScreenType.isMiniMobile
                    ? 330
                    : 390;
        //LEFT VALUE
        leftValue = myScreenType.isDesktop
            ? 280
            : myScreenType.isTablet
                ? 230
                : myScreenType.isMiniMobile
                    ? 70
                    : 120;
        imageName = 'images/data.png';

      case 'Other':
        topValue = myScreenType.isDesktop
            ? 505
            : myScreenType.isTablet
                ? 450
                : myScreenType.isMiniMobile
                    ? 400
                    : 450;
        //LEFT VALUE
        leftValue = myScreenType.isDesktop
            ? 5
            : myScreenType.isMiniMobile
                ? 15
                : 25;
        imageName = 'images/other.png';
    }

    return Positioned(
      top: topValue,
      left: leftValue,
      child: AnimatedOpacity(
          opacity: animationStarted ? 1.0 : 0,
          duration:
              Duration(milliseconds: 1000 + (animationStarted ? 0 : 1500)),
          child: SizedBox(
            width: myScreenType.isDesktop ? 60 : 30,
            height: 60,
            child: Image.asset(
              imageName,
              fit: BoxFit.contain,
            ),
          )),
    );
  }
}
