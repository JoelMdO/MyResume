import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/presentation/widgets/dialogs/opendialog_skills.dart';

class SkillsBarP1D extends StatefulWidget {
  const SkillsBarP1D({
    Key? key,
  }) : super(key: key);

  @override
  SkillsBarP1DState createState() => SkillsBarP1DState();
}

class SkillsBarP1DState extends State<SkillsBarP1D> {
  bool isHovered = false;
  final scaleUp = Matrix4.identity()..scale(1.1);
  final scaleNormal = Matrix4.identity();

// SKILLS //
  @override
  Widget build(BuildContext context) {
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
                              OpenDialogSkills.openDS(context);
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
                                            'SKILLS &\n STRENGTHS',
                                            textStyle: GoogleFonts.montserrat(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    )))))))
              ]),
        ));
  }
}
