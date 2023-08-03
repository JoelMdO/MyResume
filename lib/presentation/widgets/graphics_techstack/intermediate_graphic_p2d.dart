import 'dart:async';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:resume/utils/constants/colors.dart';
import 'package:resume/utils/constants/library.dart';

/// Grapich showing the techstack with INTERMEDIATE knowledge.
/// Techstack has been graded in Basic, Intermediate and Advanced.
class IntermediateGraphicP2D extends StatefulWidget {
  const IntermediateGraphicP2D({Key? key}) : super(key: key);

  @override
  IntermediateGraphicP2DState createState() => IntermediateGraphicP2DState();
}

class IntermediateGraphicP2DState extends State<IntermediateGraphicP2D> {
  double intermediate = 0;
  double percent2 = 0.0;
  late Timer timer;
// [initState] TO START TIMER
  @override
  void initState() {
// [Future.delayed] TO DELAY THE START OF ASSIGN VALUE TO THE PERCENTAGE AND TIME
    Future.delayed(const Duration(seconds: 2), (() {
      setState(() {
        intermediate = 0.5;
      });
// [Time.periodic] TO PROVIE INCREASE TO THE PERCENATAGE IN +10 FOR TEXT DISPLAY

      timer = Timer.periodic(const Duration(milliseconds: 500), (Timer timer) {
        setState(() {
          percent2 += 10;
          if (percent2 >= 50) {
            timer.cancel();
          }
        });
        setState(() {
          intermediate = 0.5;
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
//INTERMEDIATE//
// [SizedBox] TO FIT THE STACK IN CROP SQUARE

          SizedBox(
              width: 365,
              height: 450,
              child: Stack(
                  alignment: AlignmentDirectional.topStart,
                  children: <Widget>[
                    Positioned(
                        top: 50,
                        child: Text(
                          'Intermediate',
                          style: GoogleFonts.montserrat(
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                          ),
                        )),
                    //  Intermediate Bar
                    const Positioned(
                        top: 35,
                        left: 75,
                        child: SizedBox(
                            width: 245,
                            height: 410,
                            child: Image(
                                image:
                                    AssetImage('assets/images/Tower2.png')))),
                    Positioned(
                        top: 155,
                        left: 155,
                        child: Text(intermediateText,
                            style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                            ))),
                    // [CircularPresentIndicator] TO CREATE A PERCENT FILL FOR THE LEVELS.
                    // Intermediate Percent
                    Positioned(
                        left: 245,
                        child: CircularPercentIndicator(
                          percent: intermediate,
                          radius: 50.0,
                          lineWidth: 10.0,
                          progressColor: const Color(0xff30537D),
                          backgroundColor: Colores.yellow.withOpacity(0.4),
                          animationDuration: 1000,
                        )),
                    Positioned(
                        top: 15,
                        left: 275,
                        child: Text('$percent2%',
                            style: GoogleFonts.montserrat(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600))),
                  ])),
    );
  }
}
