import 'package:flutter/rendering.dart';

class Other extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(255, 2, 15, 26)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path0 = Path();
    path0.moveTo(size.width * 0.4990000, size.height * 0.1360000);
    path0.lineTo(size.width * 0.2500000, size.height * 0.2500000);
    path0.lineTo(size.width * 0.2500000, size.height * 0.5000000);
    path0.lineTo(size.width * 0.5000000, size.height * 0.6280000);
    path0.lineTo(size.width * 0.7500000, size.height * 0.5050000);
    path0.lineTo(size.width * 0.7500000, size.height * 0.2550000);
    path0.lineTo(size.width * 0.4990000, size.height * 0.1360000);
    path0.close();

    canvas.drawPath(path0, paintStroke0);

    // Text Layer 1

    canvas.save();
    final pivot_9981835333312 = Offset(size.width * 0.34, size.height * 0.29);
    canvas.translate(pivot_9981835333312.dx, pivot_9981835333312.dy);
    canvas.rotate(0.0);
    canvas.translate(-pivot_9981835333312.dx, -pivot_9981835333312.dy);
    TextPainter tp_9981835333312 = TextPainter(
      text: TextSpan(
          text: """Other""",
          style: TextStyle(
            fontSize: size.width * 0.12,
            fontWeight: FontWeight.normal,
            color: const Color(0xff000000),
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          )),
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.left,
    )..layout(maxWidth: size.width * 0.33, minWidth: size.width * 0.33);
    tp_9981835333312.paint(canvas, pivot_9981835333312);
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
