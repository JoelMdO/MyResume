import 'package:flutter/rendering.dart';

class Code extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = const Color.fromARGB(255, 242, 166, 17)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.03
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.miter;

    Path path0 = Path();
    path0.moveTo(size.width * 0.6490000, size.height * 0.2020000);
    path0.lineTo(size.width * 0.3500000, size.height * 0.2000000);
    path0.lineTo(size.width * 0.3500000, size.height * 0.7000000);
    path0.lineTo(size.width * 0.6490000, size.height * 0.7020000);
    path0.lineTo(size.width * 0.6490000, size.height * 0.2020000);
    path0.close();

    canvas.drawPath(path0, paintStroke0);

    // Layer 2

    Paint paintStroke1 = Paint()
      ..color = const Color.fromARGB(255, 242, 166, 17)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.03
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.miter;

    Path path1 = Path();
    path1.moveTo(size.width * 0.6010000, size.height * 0.3000000);
    path1.lineTo(size.width * 0.4990000, size.height * 0.4500000);
    path1.lineTo(size.width * 0.6000000, size.height * 0.6000000);

    canvas.drawPath(path1, paintStroke1);

    // Layer 3

    Paint paintStroke2 = Paint()
      ..color = const Color.fromARGB(255, 242, 166, 17)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.03
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.miter;

    Path path2 = Path();
    path2.moveTo(size.width * 0.4000000, size.height * 0.5980000);
    path2.lineTo(size.width * 0.4760000, size.height * 0.6000000);

    canvas.drawPath(path2, paintStroke2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
