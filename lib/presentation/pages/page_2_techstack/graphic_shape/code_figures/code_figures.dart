import 'package:flutter/material.dart';
import 'package:resume/presentation/pages/page_2_techstack/graphic_shape/code_figures/code.dart';
import 'package:resume/presentation/pages/page_2_techstack/graphic_shape/code_figures/other.dart';
import 'package:resume/presentation/pages/page_2_techstack/graphic_shape/code_figures/ux.dart';
import 'package:resume/utils/constants/screen_size.dart';

class CodeFigure extends StatefulWidget {
  final String type;
  const CodeFigure({super.key, required this.type});

  @override
  State<CodeFigure> createState() => _CodeFigureState();
}

class _CodeFigureState extends State<CodeFigure> {
  bool animationStarted = false;
  double topValue = 0;
  double leftValue = 0;
  String imageName = '';
  bool isUX = false, isCode = false, isDataBase = false;

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
      case 'UX_figure':
        isUX = true;
        break;
      case 'Code_figure':
        isCode = true;
        break;
      case 'Data_figure':
        isDataBase = true;
        break;
    }
    //
    return AnimatedOpacity(
      opacity: animationStarted ? 1.0 : 0,
      duration: Duration(milliseconds: 1000 + (animationStarted ? 0 : 1500)),
      child: isUX
          ? CustomPaint(
              size: Size(myScreenType.isDesktop ? 50 : 30,
                  (myScreenType.isDesktop ? 30 : 10).toDouble()),
              painter: UXSquare(),
            )
          : isCode
              ? CustomPaint(
                  size: Size(myScreenType.isDesktop ? 120 : 70,
                      (myScreenType.isDesktop ? 70 : 50).toDouble()),
                  painter: Code(),
                )
              : isDataBase
                  ? SizedBox(
                      width: myScreenType.isDesktop ? 60 : 30,
                      height: 60,
                      child: Icon(
                        Icons.dns_outlined,
                        color: Colors.green[300],
                      ),
                    )
                  : CustomPaint(
                      size: Size(myScreenType.isDesktop ? 120 : 70,
                          (myScreenType.isDesktop ? 70 : 50).toDouble()),
                      painter: Other()),
    );
  }
}
