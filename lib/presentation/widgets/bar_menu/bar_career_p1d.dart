import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/presentation/pages/mobile/page_3_career/main_career_p3m.dart';
import 'package:resume/presentation/pages/desktop/page_3_career/main_career_p3d.dart';
import 'package:resume/presentation/pages/tablet/page_3_career/main_career_p3t.dart';

class CareerBarP1D extends StatefulWidget {
  const CareerBarP1D({
    Key? key,
  }) : super(key: key);

  @override
  CareerBarP1DState createState() => CareerBarP1DState();
}

class CareerBarP1DState extends State<CareerBarP1D> {
  bool isHovered = false;
  final scaleNormal = Matrix4.identity();
  final scaleUp = Matrix4.identity()..scale(1.2);

// CAREER SUMMARY //
  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 920;
    final isTablet = MediaQuery.of(context).size.width >= 767;

    return FittedBox(
        fit: BoxFit.fitWidth,
        child: SizedBox(
            width: 400,
            height: 250,
            child: Stack(
                alignment: AlignmentDirectional.topStart,
                children: <Widget>[
                  //BLUE IMAGE
                  Positioned(
                      top: 85,
                      //   [DelayedDisplay] TO DELAY THE START OF THE WIDGET API DELAYED_DISPLAY
                      child: DelayedDisplay(
                          delay: const Duration(milliseconds: 500),
                          child: FadeInLeft(
                              child: Image.asset(
                            'assets/images/BlueSquare.png',
                          )))),
                  //YELLOW IMAGE
                  Positioned(
                      top: 65,
                      left: 20,
                      child: FadeInLeft(
                          child: Image.asset(
                        'assets/images/GreySquareYellow.png',
                      ))),
                  //WING IMAGE
                  Positioned(
                      top: 115,
                      left: 90,
                      child: FadeInLeft(
                          child: Image.asset(
                        'assets/images/BlackWing.png',
                      ))),
                  //TEXT TITLE
                  Positioned(
                    top: 140,
                    left: 140,
                    //     [Inkwell] TO MAKE AS BUTTON THE IMAGE
                    child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        onEnter: (event) {
                          setState(() {
                            isHovered = true;
                          });
                        },
                        onExit: (event) {
                          setState(() {
                            isHovered = false;
                          });
                        },
                        //     [Inkwell] TO MAKE AS BUTTON THE IMAGE
                        child: InkWell(
                          onTap: () {
                            if (isDesktop) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const CareerPageDesktop()));
                            } else if (isTablet) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const CareerPageTablet()));
                            } else {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const CareerPageMobile()));
                            }
                          },
                          child: DelayedDisplay(
                              delay: const Duration(milliseconds: 1500),
                              child: Transform(
                                  transform: isHovered ? scaleUp : scaleNormal,
                                  //     [IgnorePointer] TO ALLOW THE TEXT TO GET THE GESTUREDETECTOR
                                  child: IgnorePointer(
                                      child: AnimatedTextKit(
                                    repeatForever: false,
                                    animatedTexts: [
                                      TypewriterAnimatedText(
                                          'CAREER &\n PROJECTS',
                                          textStyle: GoogleFonts.montserrat(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold))
                                    ],
                                  )))),
                        )),
                  ),
                ])));
  }
}
