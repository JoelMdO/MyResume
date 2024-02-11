import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:resume/utils/constants/screen_size.dart';

// ignore: must_be_immutable
class ColorLine extends StatefulWidget {
  String type;
  ColorLine({super.key, required this.type});

  @override
  State<ColorLine> createState() => _ColorLineState();
}

class _ColorLineState extends State<ColorLine> {
  bool animationStarted = false;
  double topValue = 0;
  double leftValue = 0;
  String imageName = '';
  dynamic beginOffset;
  dynamic endOffset;

  //AUTO TRIGGER ANIMATION//
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 500), () {
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
      case 'blue_line':
        topValue = myScreenType.isDesktop
            ? 240
            : myScreenType.isTablet
                ? 195
                : 195;
        //LEFT VALUE
        leftValue = myScreenType.isDesktop
            ? 100
            : myScreenType.isTablet
                ? 105
                : myScreenType.isMiniMobile
                    ? 15
                    : 25;
        imageName = 'images/blue_line.png';
        beginOffset = const Offset(15, 0);
        endOffset = const Offset(0, 0);

      case 'orange_line':
        topValue = myScreenType.isDesktop
            ? 240
            : myScreenType.isTablet
                ? 195
                : 195;
        //LEFT VALUE
        leftValue = myScreenType.isDesktop
            ? 590
            : myScreenType.isTablet
                ? 480
                : myScreenType.isMiniMobile
                    ? 230
                    : 270;
        imageName = 'images/orange_line.png';
        beginOffset = const Offset(-15, 0);
        endOffset = const Offset(0, 0);
    }

    return Animate(
        effects: const [SlideEffect()],
        child: Positioned(
          top: topValue,
          left: leftValue,
          child: AnimatedOpacity(
              opacity: animationStarted ? 1.0 : 0.2,
              duration:
                  Duration(milliseconds: 1000 + (animationStarted ? 0 : 1500)),
              child: SizedBox(
                width: myScreenType.isDesktop ? 200 : 140,
                child: Image.asset(
                  imageName,
                  fit: BoxFit.contain,
                ).animate().slide(
                    delay: const Duration(milliseconds: 1000),
                    duration: const Duration(milliseconds: 2000),
                    begin: beginOffset,
                    end: endOffset,
                    curve: Curves.easeIn),
              )),
        ));
  }
}
