import 'package:flutter/rendering.dart';

class UXSquare extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = const Color(0xff075df3)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.03
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.miter;

    // Draw the circle
    canvas.drawCircle(
        Offset(size.width / 2, size.height / 2), size.width / 2, paintStroke0);

    // Text Layer 1 Copy
    canvas.save();
    final pivot_6221551850861 = Offset(size.width * 0.36, size.height * 0.28);
    canvas.translate(pivot_6221551850861.dx, pivot_6221551850861.dy);
    canvas.rotate(0.0);
    canvas.translate(-pivot_6221551850861.dx, -pivot_6221551850861.dy);
    TextPainter tp_6221551850861 = TextPainter(
      text: TextSpan(
          text: """UI\nUX""",
          style: TextStyle(
            fontSize: size.width * 0.2,
            fontWeight: FontWeight.bold,
            color: const Color(0xff075df3),
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          )),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
    )..layout(maxWidth: size.width * 0.28, minWidth: size.width * 0.28);
    tp_6221551850861.paint(canvas, pivot_6221551850861);
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
