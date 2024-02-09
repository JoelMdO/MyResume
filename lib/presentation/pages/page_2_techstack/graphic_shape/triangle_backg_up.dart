import 'package:flutter/material.dart';

class TriangleBackgroundLeftUpSide extends StatelessWidget {
  const TriangleBackgroundLeftUpSide({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(800, ((850) * 0.5).toDouble()),
      painter: Triangle(),
    );
  }
}

class Triangle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintFill0 = Paint()
      ..color = const Color.fromARGB(255, 174, 117, 117)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * -0.0018000, size.height * 0.0246000);
    path_0.lineTo(size.width * 0.0488000, size.height * -0.0012000);
    path_0.lineTo(size.width * 0.1544000, size.height * 0.1522000);
    path_0.lineTo(size.width * 0.0018000, size.height * 0.4588000);
    path_0.lineTo(size.width * -0.0018000, size.height * 0.0246000);
    path_0.close();

    canvas.drawPath(path_0, paintFill0);

    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paintStroke0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
