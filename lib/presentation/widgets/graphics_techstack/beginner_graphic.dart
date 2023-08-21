import 'dart:async';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:resume/presentation/widgets/graphics_techstack/text_styles_graphics.dart';
import 'package:resume/utils/constants/colors.dart';
import 'package:resume/presentation/widgets/graphics_techstack/text_graphics.dart';

/// Grapich showing the techstack with BEGINNER  knowledge.
/// Techstack has been graded in Basic, Intermediate and Advanced.
class BeginnerGraphicP2D extends StatefulWidget {
  const BeginnerGraphicP2D({Key? key}) : super(key: key);

  @override
  BeginnerGraphicP2DState createState() => BeginnerGraphicP2DState();
}

class BeginnerGraphicP2DState extends State<BeginnerGraphicP2D> {
  double basic = 0;
  double percent = 0.0;
  late Timer timer;
// [initState] TO START TIMER
  @override
  void initState() {
// [Future.delayed] TO DELAY THE START OF ASSIGN VALUE TO THE PERCENTAGE AND TIME
    Future.delayed(const Duration(seconds: 2), (() {
      setState(() {
        basic = 0.3;
      });
// [Time.periodic] TO PROVIE INCREASE TO THE PERCENATAGE IN +10 FOR TEXT DISPLAY

      timer = Timer.periodic(const Duration(milliseconds: 500), (Timer timer) {
        setState(() {
          percent += 10;
          if (percent >= 30) {
            timer.cancel();
          }
        });
        setState(() {
          basic = 0.3;
        });
      });
    }));
    super.initState();
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

// TECHSTACK //
  @override
  Widget build(BuildContext context) {
    return DelayedDisplay(
      delay: const Duration(milliseconds: 1200),
      // [SizedBox] TO FIT THE STACK IN CROP SQUARE

      child: SizedBox(
          width: 360,
          height: 365,
          child: Stack(
              alignment: AlignmentDirectional.topStart,
              fit: StackFit.loose,
              children: <Widget>[
                //BASIC//
                Positioned(
                  top: 50,
                  child: const Text('Basic').graphicTitleStyle(),
                ),
                //  Basic Bar
                const Positioned(
                  top: 50,
                  left: 50,
                  child: Image(image: AssetImage('assets/images/Tower1.png')),
                ),
                Positioned(
                    top: 135,
                    left: 110,
                    child: Text(beginnerText).graphicTextStyle()),
                // [CircularPresentIndicator] TO CREATE A PERCENT FILL FOR THE LEVELS.
                // Basic Percent
                Positioned(
                    top: 5,
                    left: 245,
                    child: CircularPercentIndicator(
                      percent: basic,
                      radius: 50.0,
                      lineWidth: 10.0,
                      progressColor: const Color(0xff30537D),
                      backgroundColor: Colores.yellow.withOpacity(0.4),
                      animationDuration: 1000,
                    )),
                Positioned(
                    top: 20,
                    left: 275,
                    child: Text('$percent%').graphicPercentTextStyle()),
              ])),
    );
  }
}
