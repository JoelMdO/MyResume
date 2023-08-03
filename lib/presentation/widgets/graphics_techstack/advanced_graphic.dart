import 'dart:async';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:resume/utils/constants/colors.dart';
import 'package:resume/utils/constants/library.dart';

/// Grapich showing the  techstack with ADVANCED knowledge.
/// Techstack has been graded in Basic, Intermediate and Advanced.
class AdvancedGraphicP2D extends StatefulWidget {
  const AdvancedGraphicP2D({Key? key}) : super(key: key);

  @override
  AdvancedGraphicP2DState createState() => AdvancedGraphicP2DState();
}

class AdvancedGraphicP2DState extends State<AdvancedGraphicP2D> {
  double advanced = 0;
  double percent3 = 0.0;
  late Timer timer;
// [initState] TO START TIMER
  @override
  void initState() {
// [Future.delayed] TO DELAY THE START OF ASSIGN VALUE TO THE PERCENTAGE AND TIME
    Future.delayed(const Duration(seconds: 2), (() {
      setState(() {
        advanced = 0.7;
      });
// [Time.periodic] TO PROVIDE INCREASE TO THE PERCENATAGE IN +10 FOR TEXT DISPLAY
      timer = Timer.periodic(const Duration(milliseconds: 500), (Timer timer) {
        setState(() {
          percent3 += 10;
          if (percent3 >= 70) {
            timer.cancel();
          }
        });
        setState(() {
          advanced = 0.7;
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
        child:
//ADVANCED//
// [SizedBox] TO FIT THE STACK IN CROP SQUARE
            SizedBox(
          width: 400,
          height: 540,
          child: Stack(
              alignment: AlignmentDirectional.topStart,
              children: <Widget>[
                Positioned(
                    top: 50,
                    left: 80,
                    child: Text(
                      'Advanced',
                      style: GoogleFonts.montserrat(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                      ),
                    )),
                //  Advanced Bar
                const Positioned(
                    top: 40,
                    child: SizedBox(
                        width: 415,
                        height: 525,
                        child: Image(
                            image: AssetImage('assets/images/Tower3.png')))),
                Positioned(
                    top: 175,
                    left: 135,
                    child: Text(advancedText,
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ))),
                // [CircularPresentIndicator] TO CREATE A PERCENT FILL FOR THE LEVELS.
                // Advanced Percent
                Positioned(
                    left: 285,
                    child: CircularPercentIndicator(
                      percent: advanced,
                      radius: 50.0,
                      lineWidth: 10.0,
                      progressColor: const Color(0xff30537D),
                      backgroundColor: Colores.yellow.withOpacity(0.4),
                      animationDuration: 1000,
                    )),
                Positioned(
                    top: 20,
                    left: 310,
                    child: Text('$percent3%',
                        style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600))),
              ]),
        ));
  }
}
