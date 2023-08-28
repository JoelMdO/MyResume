import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/contacts/contacts_right_column.dart';
import 'dart:math' as math;
import 'package:resume/utils/constants/colors.dart';

class FigureContacts extends StatelessWidget {
  const FigureContacts({super.key});

//WIDGET REPRESENTS THE FIGURE TO BE USED IN RIGHT COLUMN
  @override
  Widget build(BuildContext context) {
//[STACK] FOR EASY PLACE OF THE PARALELLOGRAM STYLE AND TRIANGLES
    return Stack(
      alignment: AlignmentDirectional.topStart,
      fit: StackFit.loose,
      children: [
        //PARALLELOGRAM ITEM
        ClipPath(
            clipper: CustomClipPathSquare(),
            child: Container(
                decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colores.grey,
                    Colores.grey,
                    Colores.grey,
                    Colors.white,
                    Colors.white,
                  ]),
            ))),
        //SECOND TRIANGLE COLOR YELLOW
        Align(
          alignment: AlignmentDirectional.topStart,
          child: Transform.rotate(
              angle: math.pi / -65,
              child: ClipPath(
                  clipper: CustomClipPathTriangleLeft(),
                  child: SizedBox(
                      width: 50,
                      height: 155,
                      child: Container(color: Colores.yellow)))),
        ),
        //FIRST TRIANGLE COLOR BLUE
        Positioned(
          child: Transform.rotate(
              angle: math.pi / -130,
              child: ClipPath(
                  clipper: CustomClipPathTriangleLeft(),
                  child: SizedBox(
                      width: 45,
                      height: 150,
                      child: Container(color: Colores.blue)))),
        ),
        const Positioned(
            top: 50,
            left: 40,
            child:
                SizedBox(width: 100, height: 180, child: ContactsRightColumn()))
      ],
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
