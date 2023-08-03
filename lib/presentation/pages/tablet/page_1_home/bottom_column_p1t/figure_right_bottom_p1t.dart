import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:resume/utils/constants/colors.dart';

class FigureBottomColumnRight extends StatelessWidget {
  const FigureBottomColumnRight({super.key});

//WIDGET REPRESENTS THE FIGURE TO BE USED IN THE LEFT AND RIGHT COLUMN
  @override
  Widget build(BuildContext context) {
//[STACK] FOR EASY PLACE OF THE PARALELLOGRAM STYLE AND TRIANGLES
    return Transform.flip(
      flipX: true,
      child: Stack(alignment: AlignmentDirectional.topStart, children: [
        //PARALLELOGRAM ITEM
        ClipPath(
            clipper: CustomClipPathSquare(),
            child: SizedBox(
                width: 200,
                height: 390,
                child: Container(color: Colores.blue))),
        //SECOND TRIANGLE COLOR YELLOW
        Padding(
          padding: const EdgeInsets.only(top: 50, right: 0),
          child: Transform.rotate(
              angle: math.pi / -65,
              child: ClipPath(
                  clipper: CustomClipPathTriangleLeft(),
                  child: SizedBox(
                      width: 80,
                      height: 150,
                      child: Container(color: Colores.yellow)))),
        ),
        //FIRST TRIANGLE COLOR GRAY
        Transform.rotate(
            angle: math.pi / -130,
            child: ClipPath(
                clipper: CustomClipPathTriangleLeft(),
                child: SizedBox(
                    width: 50,
                    height: 300,
                    child: Container(color: Colores.grey)))),
      ]),
    );
  }
}

//TRIANGLE [CustmClipPath] TRIANGLE POINTING LEFT
class CustomClipPathTriangleLeft extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width, size.height / 3);
    path.lineTo(0, size.height);
    path.lineTo(0, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

//TRIANGLE [CustmClipPath] TRIANGLE POINTING RIGHT
class CustomClipPathTriangleRight extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0, size.height / 2);
    path.lineTo(size.width / 2, 0.0);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(0, size.height / 2);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

//SQUARE [CustmClipPath] TO DRAW THE FIGURE SELECTED
class CustomClipPathSquare extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width * 0.1567000, size.height * 0.9906500);
    path.lineTo(size.width * 0.0022000, size.height * 0.7441500);
    path.lineTo(size.width * 0.022000,
        size.height * 0.0038500); // LINE FROM BOTTOM SECOND POINT TO TOP LEFT
    path.lineTo(
        size.width * 1.00279500,
        size.height *
            0.1821000); // LINE FROM LEFT TOP CORNER TO RIGHT FIRST CORNER
    path.lineTo(
        size.width * 0.9500000,
        size.height *
            0.9255500); // LINE FROM TOP RIGHT CORNER TO BOTTOM RIGHT CORNER
    path.lineTo(size.width * 0.1567000, size.height * 0.9906500);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
