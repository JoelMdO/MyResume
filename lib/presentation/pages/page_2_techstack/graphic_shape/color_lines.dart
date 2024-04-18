import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:resume/utils/constants/screen_size.dart';

class ColorLine extends StatefulWidget {
  final String type;
  const ColorLine({super.key, required this.type});

  @override
  State<ColorLine> createState() => _ColorLineState();
}

class _ColorLineState extends State<ColorLine> {
  bool animationStarted = false;
  dynamic beginOffset;
  dynamic endOffset;
  bool isLineBlue = false;

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
    ScreenType myScreenType = ScreenType(context);
    //
    switch (widget.type) {
      case 'blue_line':
        isLineBlue = true;
        beginOffset = const Offset(15, 0);
        endOffset = const Offset(0, 0);
        break;
      case 'orange_line':
        beginOffset = const Offset(-15, 0);
        endOffset = const Offset(0, 0);
        break;
    }
    //
    return Animate(
      effects: const [SlideEffect()],
      child: AnimatedOpacity(
        opacity: animationStarted ? 1.0 : 0.2,
        duration: Duration(milliseconds: 1000 + (animationStarted ? 0 : 1500)),
        child: CustomPaint(
          size: Size(myScreenType.isDesktop ? 200 : 150,
              (myScreenType.isDesktop ? 200 : 100).toDouble()),
          painter: isLineBlue ? ColorLineBlue() : ColorLineOrange(),
        ),
      ).animate().slide(
          delay: const Duration(milliseconds: 1000),
          duration: const Duration(milliseconds: 2000),
          begin: beginOffset,
          end: endOffset,
          curve: Curves.easeIn),
    );
  }
}

class ColorLineBlue extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.miter;

    Path path0 = Path();
    path0.moveTo(size.width * 0.8000000, size.height * 0.2500000);
    path0.lineTo(size.width * 0.4980000, size.height * 0.2500000);
    path0.lineTo(size.width * 0.3000000, size.height * 0.5000000);
    path0.lineTo(size.width * 0.4000000, size.height * 0.7450000);

    canvas.drawPath(path0, paintStroke0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class ColorLineOrange extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintStroke1 = Paint()
      ..color = const Color.fromARGB(255, 241, 156, 18)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.miter;

    Path path1 = Path();
    path1.moveTo(size.width * 0.2000000, size.height * 0.2550000);
    path1.lineTo(size.width * 0.5040000, size.height * 0.2500000);
    path1.lineTo(size.width * 0.7000000, size.height * 0.5000000);
    path1.lineTo(size.width * 0.6000000, size.height * 0.7450000);

    canvas.drawPath(path1, paintStroke1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
