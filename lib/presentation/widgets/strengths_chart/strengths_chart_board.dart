import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:resume/utils/constants/colors.dart';
import 'package:resume/utils/constants/screen_size.dart';
import 'package:resume/presentation/widgets/strengths_chart/strengths_text.dart';
import 'package:resume/presentation/widgets/strengths_chart/strengths_text_list.dart';

///A widget to show the my Strenghts from a list called [StrengthsList]
///which is ListBuilder, in general the widget has the purpose to represent
///an strenghts chart.
class StrengthsChartBoard extends StatefulWidget {
  const StrengthsChartBoard({super.key});

  @override
  State<StrengthsChartBoard> createState() => _StrengthsChartBoardState();
}

class _StrengthsChartBoardState extends State<StrengthsChartBoard> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    ScreenType myScreenType = ScreenType(context);

    return FittedBox(
      fit: BoxFit.contain,
      child: Container(
          width: myScreenType.isDesktop ? 900 : 500,
          height: 500,
          decoration: const BoxDecoration(
            border: Border(
                left: BorderSide(width: 4, color: Colores.orangeGraphics),
                bottom: BorderSide(width: 4, color: Colores.orangeGraphics)),
            color: Color.fromARGB(255, 243, 248, 248),
          ),
          child: Stack(children: [
            Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  'assets/images/Arrowup.png',
                  width: 50,
                )),
            Positioned(
                bottom: -5,
                right: 0,
                child: Image.asset(
                  'assets/images/Arrowleft.png',
                  width: 50,
                )),
            Positioned(
                //Proactive
                top: 40,
                left: myScreenType.isDesktop ? 375 : 225,
                child: FadeIn(
                    delay: const Duration(milliseconds: 7500),
                    duration: const Duration(milliseconds: 500),
                    child: const StrengthsList(finalIndex: 0))),
            Positioned(
                //Decision
                top: 80,
                left: myScreenType.isDesktop ? 325 : 195,
                child: FadeIn(
                    delay: const Duration(milliseconds: 6500),
                    duration: const Duration(milliseconds: 500),
                    child: const StrengthsList(finalIndex: 1))),
            Positioned(
                //Self
                top: 120,
                left: myScreenType.isDesktop ? 295 : 160,
                child: FadeIn(
                    delay: const Duration(milliseconds: 5500),
                    duration: const Duration(milliseconds: 500),
                    child: const StrengthsList(finalIndex: 2))),
            Positioned(
                //Resilience
                top: 190,
                left: myScreenType.isDesktop ? 255 : 120,
                child: FadeIn(
                    delay: const Duration(milliseconds: 4500),
                    duration: const Duration(milliseconds: 500),
                    child: const StrengthsList(finalIndex: 3))),
            Positioned(
                //Commitment
                top: 235,
                left: myScreenType.isDesktop ? 215 : 85,
                child: FadeIn(
                    delay: const Duration(milliseconds: 3500),
                    duration: const Duration(milliseconds: 500),
                    child: const StrengthsList(finalIndex: 4))),
            Positioned(
              //Situational
              top: 275,
              left: myScreenType.isDesktop ? 165 : 65,
              child: FadeIn(
                  delay: const Duration(milliseconds: 2500),
                  duration: const Duration(milliseconds: 500),
                  child: const StrengthsList(finalIndex: 5)),
            ),
            Positioned(
              //Flexibility
              top: 340,
              left: myScreenType.isDesktop ? 115 : 35,
              child: FadeIn(
                  delay: const Duration(milliseconds: 1500),
                  duration: const Duration(milliseconds: 500),
                  child: const StrengthsList(finalIndex: 6)),
            ),
            Positioned(
              //Focus
              top: 410,
              left: myScreenType.isDesktop ? 65 : 5,
              child: FadeIn(
                  delay: const Duration(milliseconds: 500),
                  duration: const Duration(milliseconds: 500),
                  child: const StrengthsList(finalIndex: 7)),
            ),
          ])),
    );
  }
}

class StrengthsList extends StatelessWidget {
  final int finalIndex;
  const StrengthsList({super.key, required this.finalIndex});

  @override
  Widget build(BuildContext context) {
    final itemText = StrengthsTextList.strengthsTextInfo[finalIndex];

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      StrengthsText(
        //STRENGTHS DIALOG
        text: itemText.text,
        subtext: itemText.subtext,
      ),
      Container(
        width: 300,
        height: 5,
        decoration: const BoxDecoration(
          color: Colores.blueGraphics,
        ),
      ),
    ]);
  }
}
