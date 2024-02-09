import 'package:flutter/material.dart';
import 'package:resume/utils/constants/screen_size.dart';

class Circle extends StatefulWidget {
  final String type;
  const Circle({super.key, required this.type});

  @override
  State<Circle> createState() => _CircleState();
}

class _CircleState extends State<Circle> {
  double coordTopInit = 0;
  double coordTopEnd = 0;
  double coordHorizInit = 0;
  double coordHorizEnd = 0;
  bool animationStarted = false;

  //AUTO TRIGGER ANIMATION//
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        animationStarted = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenSize myscreenSize = ScreenSize(context);
    //Scales
    double scaleWidth = myscreenSize.screenWidth / 151;
    double scaleHeight = myscreenSize.screenHeight / 1304;

    //Coordinates
    switch (widget.type) {
      case 'right':
        coordTopInit = 90;
        coordTopEnd = 90 * scaleHeight;
        coordHorizInit = 350;
        coordHorizEnd = 350 * scaleWidth;
        break;
      case 'left':
        coordTopInit = 90;
        coordTopEnd = 90 * scaleHeight;
        coordHorizInit = 220;
        coordHorizEnd = 220 * scaleWidth;
        break;
      case 'bottom':
        coordTopInit = 220;
        coordTopEnd = 220 * scaleHeight;
        coordHorizInit = 282;
        coordHorizEnd = 282 * scaleWidth;
        break;
    }

    return Positioned(
        top: animationStarted ? coordTopInit : coordTopEnd,
        left: animationStarted ? coordHorizInit : coordHorizEnd,
        child: AnimatedContainer(
            width: animationStarted ? 20 : 30,
            height: animationStarted ? 20 : 30,
            duration: const Duration(seconds: 1),
            curve: Curves.easeInBack,
            child: Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.black),
            )));
  }
}
