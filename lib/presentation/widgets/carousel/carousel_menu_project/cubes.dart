import 'package:flutter/material.dart';
import 'package:resume/presentation/pages/page_4_projects/projects_text_styles.dart';
import 'package:resume/presentation/widgets/carousel/carousel_menu_project/logo_projects.dart';
import 'package:resume/presentation/pages/page_4_projects/project_types_content.dart';
import 'package:resume/utils/constants/colors.dart';

// ignore: must_be_immutable
class Cube extends StatelessWidget {
  String type;
  Cube({super.key, required this.type});

  late Color color, colorside;
  late Text text;
  dynamic projectType;
  String imageName = '';
  String name = '';
  late double width, height, top, right;

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case 'react':
        color = Colores.purpleReact;
        colorside = Colores.purpleReactSide;
        text = const Text('React JS');
        width = 90;
        height = 90;
        top = 35;
        right = 35;
        projectType =
            text.carrouselProjectsSizeTextTitleStyle(Colores.projectTypeText);
        break;
      case 'flutter':
        color = Colores.pinkFlutter;
        colorside = Colores.pinkFlutterSide;
        text = const Text('Flutter');
        width = 80;
        height = 80;
        top = 35;
        right = 45;
        projectType =
            text.carrouselProjectsSizeTextTitleStyle(Colores.textFlutter);
        break;
      case 'nodejs':
        color = Colores.greyNode;
        colorside = Colores.greyNodeSide;
        text = const Text('');
        width = 90;
        height = 90;
        top = 35;
        right = 20;
        projectType =
            text.carrouselProjectsSizeTextTitleStyle(Colores.projectTypeText);
        break;
      case 'figma':
        color = Colors.black;
        colorside = Colors.black;
        text = const Text('Figma');
        width = 80;
        height = 80;
        top = 35;
        right = 35;
        projectType =
            text.carrouselProjectsSizeTextTitleStyle(Colores.projectTypeText);
        break;
      case 'aviation':
        color = Colores.orangeAirplane;
        colorside = Colores.orangeAirplaneSide;
        text = const Text('Aviation');
        name = 'aviation';
        width = 80;
        height = 80;
        top = 35;
        right = 35;
        projectType =
            text.carrouselProjectsSizeTextTitleStyle(Colores.projectTypeText);
        break;
      case 'in-progress':
        color = Colores.greenDev;
        colorside = Colores.greenDevSide;
        text = const Text('In progress');
        width = 80;
        height = 80;
        top = 35;
        right = 35;
        projectType =
            text.carrouselProjectsSizeTextTitleStyle(Colores.projectTypeText);
        break;
      case 'repo':
        color = Colores.blueGit;
        colorside = Colores.blueGitSide;
        text = const Text('Repository');
        width = 80;
        height = 80;
        top = 35;
        right = 35;
        projectType = text.carrouselProjectsSizeTextTitleStyle(Colors.black);
        break;
    }

    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProjectTypesContent(type: type)));
      },
      child: FittedBox(
        fit: BoxFit.contain,
        child: Stack(children: [
          CustomPaint(
            size: Size(250, (250 * 1.0).toDouble()),
            painter: RPSCustomPainter(color: color, colorSide: colorside),
          ),
          Positioned(bottom: 105, right: 15, child: projectType),
          Positioned(
              top: top,
              right: right,
              child: Hero(
                tag: type,
                child: LogoProjects(
                  type: type,
                  width: width,
                  height: height,
                ),
              )),
        ]),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  final Color color, colorSide;

  RPSCustomPainter({required this.color, required this.colorSide});

  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1, frontal face

    Paint paintFill0 = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.3928000, size.height * 0.0616000);
    path_0.lineTo(size.width * 0.3856000, size.height * 0.6056000);
    path_0.lineTo(size.width * 0.9912000, size.height * 0.5968000);
    path_0.lineTo(size.width * 0.9928000, size.height * 0.0624000);
    path_0.lineTo(size.width * 0.3928000, size.height * 0.0616000);
    path_0.close();

    canvas.drawPath(path_0, paintFill0);

    // Layer 1

    Paint paintStroke0 = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paintStroke0);

    // Layer 2

    Paint paintFill1 = Paint()
      ..color = colorSide
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.3960000, size.height * 0.0616000);
    path_1.lineTo(size.width * 0.1984000, size.height * 0.1088000);
    path_1.lineTo(size.width * 0.1968000, size.height * 0.5120000);
    path_1.lineTo(size.width * 0.3992000, size.height * 0.6080000);
    path_1.lineTo(size.width * 0.3960000, size.height * 0.0616000);
    path_1.close();

    canvas.drawPath(path_1, paintFill1);

    // Layer 2

    Paint paintStroke1 = Paint()
      ..color = colorSide
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_1, paintStroke1);

    // Layer 3
    Paint paintFill3 = Paint()
      ..shader = const LinearGradient(
        begin: Alignment(0.00, -1.00),
        end: Alignment(0, 1),
        colors: [
          Color(0x7E30537D),
          Color(0x6130537D),
          Color(0x0030537D),
        ],
      ).createShader(Rect.fromPoints(
        Offset(size.width * 0.1976000, size.height * 0.5072000),
        Offset(size.width * 0.4032000, size.height * 0.8000000),
      ))
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.1976000, size.height * 0.5072000);
    path_3.lineTo(size.width * 0.4008000, size.height * 0.6008000);
    path_3.lineTo(size.width * 0.4032000, size.height * 0.8000000);
    path_3.lineTo(size.width * 0.2000000, size.height * 0.7200000);
    path_3.lineTo(size.width * 0.1976000, size.height * 0.5072000);
    path_3.close();

    canvas.drawPath(path_3, paintFill3);

    // Layer 3
    Paint paintStroke3 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path pathStroke3 = Path()
      ..moveTo(size.width * 0.1976000, size.height * 0.5072000)
      ..lineTo(size.width * 0.4008000, size.height * 0.6008000);

    canvas.drawPath(pathStroke3, paintStroke3);

    // Layer 4

    Paint paintFill4 = Paint()
      ..shader = LinearGradient(
        begin: const Alignment(0.00, -1.00),
        end: const Alignment(0, 1),
        colors: [
          color,
          const Color(0x7E30537D),
          const Color(0x6130537D),
          const Color(0x0030537D),
        ],
      ).createShader(Rect.fromPoints(
        Offset(size.width * 0.4040000, size.height * 0.6000000),
        Offset(size.width, size.height * 0.8000000),
      ));

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.4040000, size.height * 0.6000000);
    path_4.lineTo(size.width, size.height * 0.6000000);
    path_4.lineTo(size.width, size.height * 0.8000000);
    path_4.lineTo(size.width * 0.4040000, size.height * 0.8000000);
    path_4.lineTo(size.width * 0.4040000, size.height * 0.6000000);
    path_4.close();

    canvas.drawPath(path_4, paintFill4);

    // Layer 4
    Paint paintStroke4 = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.01
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path pathStroke4 = Path()
      ..moveTo(size.width * 0.4040000, size.height * 0.6000000)
      ..lineTo(size.width, size.height * 0.6000000);

    canvas.drawPath(pathStroke4, paintStroke4);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
