import 'package:flutter/material.dart';
import 'package:resume/presentation/pages/page_2_techstack/graphic_shape/circle.dart';
import 'package:resume/presentation/pages/page_2_techstack/graphic_shape/text_styles_techstack.dart';
import 'package:resume/utils/constants/screen_size.dart';

class Hexagon extends StatefulWidget {
  const Hexagon({super.key});

  @override
  State<Hexagon> createState() => _HexagonState();
}

class _HexagonState extends State<Hexagon> {
  bool animationStarted = false;

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
    ScreenSize myScreenSize = ScreenSize(context);
    ScreenType myScreenType = ScreenType(context);

    return SizedBox(
        width: myScreenType.isDesktop
            ? myScreenSize.screenWidth * 0.40
            : myScreenSize.screenWidth * 0.8,
        child: FittedBox(
            fit: BoxFit.contain,
            child: Stack(
                fit: StackFit.loose,
                alignment: AlignmentDirectional.topStart,
                children: [
                  AnimatedOpacity(
                      opacity: animationStarted ? 1.0 : 0.2,
                      duration: const Duration(milliseconds: 1500),
                      child: CustomPaint(
                          size: Size(650, (650 * 0.5).toDouble()),
                          painter: HexagonShape())),
                  Positioned(
                      top: 80,
                      left: 277,
                      child: AnimatedOpacity(
                          opacity: animationStarted ? 1.0 : 0.2,
                          duration: const Duration(milliseconds: 1500),
                          child: Image.asset('assets/images/J code.png',
                              width: 30, height: 30))),
                  Positioned(
                      top: 120,
                      left: 247,
                      child: AnimatedOpacity(
                          opacity: animationStarted ? 1.0 : 0.2,
                          duration: const Duration(milliseconds: 1500),
                          child: const Text("Tech\n Stack")
                              .textStyleTitleStyle())),
                  const Circle(
                    type: 'left',
                  ),
                  const Circle(
                    type: 'right',
                  ),
                  const Circle(
                    type: 'bottom',
                  )
                ])));
  }
}

class HexagonShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintFill0 = Paint()
      ..color = Colors.transparent
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.4500000, size.height * 0.2000000);
    path_0.lineTo(size.width * 0.3500000, size.height * 0.3000000);
    path_0.lineTo(size.width * 0.3500000, size.height * 0.6000000);
    path_0.lineTo(size.width * 0.4500000, size.height * 0.7000000);
    path_0.lineTo(size.width * 0.5500000, size.height * 0.6000000);
    path_0.lineTo(size.width * 0.5500000, size.height * 0.3000000);
    path_0.lineTo(size.width * 0.4500000, size.height * 0.2000000);
    path_0.close();

    canvas.drawPath(path_0, paintFill0);

    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.005
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paintStroke0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
