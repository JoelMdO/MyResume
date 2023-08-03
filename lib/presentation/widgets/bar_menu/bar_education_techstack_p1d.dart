import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/presentation/pages/mobile/page_2_techstack/main_techstack_p2m.dart';
import 'package:resume/presentation/pages/desktop/page_2_techstack/main_techstack_p2d.dart';
import 'package:resume/presentation/pages/tablet/page_2_techstack/main_techstack_p2t.dart';

class EducationBarP1D extends StatefulWidget {
  const EducationBarP1D({
    Key? key,
  }) : super(key: key);

  @override
  EducationBarP1DState createState() => EducationBarP1DState();
}

class EducationBarP1DState extends State<EducationBarP1D> {
  bool isHovered = false;
  final scaleUp = Matrix4.identity()..scale(1.1);
  final scaleNormal = Matrix4.identity();

// EDUCATION AND TECHSTACK - NAVIGATION PAGE 2 -//
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
                      child: DelayedDisplay(
                          delay: const Duration(seconds: 1),
                          child: FadeInLeft(
                              duration: const Duration(seconds: 1),
                              child: const Image(
                                  image: AssetImage(
                                'assets/images/BlackWing.png',
                              ))))),
//TEXT TITLE
                  Positioned(
                      top: 140,
                      left: 140,
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
                                            const TechStackPageDesktop()));
                              } else if (isTablet) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            const TechStackPageTablet()));
                              } else {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            const TechStackPageMobile()));
                              }
                            },
                            child: DelayedDisplay(
                                delay: const Duration(milliseconds: 1500),
                                child: Transform(
                                    transform:
                                        isHovered ? scaleUp : scaleNormal,
//     [IgnorePointer] TO ALLOW THE TEXT TO GET THE GESTUREDETECTOR
                                    child: IgnorePointer(
                                        child: AnimatedTextKit(
                                      repeatForever: false,
                                      animatedTexts: [
                                        TypewriterAnimatedText(
                                            'EDUCATION & \n TECH STACK',
                                            textStyle: GoogleFonts.montserrat(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ))))),
                      ))
                ])));
  }
}
