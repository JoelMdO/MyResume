import 'package:flutter/material.dart';
import 'package:resume/presentation/pages/tablet/page_1_home/bottom_column_p1t/figure_right_bottom_p1t.dart';
import 'package:resume/presentation/widgets/drawer/index_drawer.dart';
import 'package:resume/utils/constants/colors.dart';
import 'dart:math' as math;

class DrawerShape extends StatelessWidget {
  const DrawerShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Stack(
          alignment: AlignmentDirectional.topStart,
          fit: StackFit.loose,
          children: [
            //SHADOW OF THE DRAWER
            ClipPath(
                clipper: CustomClipPathShadow(),
                child: Container(
                    width: 420,
                    height: 480,
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.black87.withOpacity(0.7),
                          spreadRadius: 1,
                          offset: const Offset(0, 10),
                          blurRadius: 15.0)
                    ]))),
            //DRAWER MAIN SHAPE
            ClipPath(
                clipper: CustomClipPath(),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.redAccent,
                    // gradient: const LinearGradient(
                    //     begin: AlignmentDirectional.topStart,
                    //     end: AlignmentDirectional.bottomEnd,
                    //     colors: [
                    //       // Colores.grey,
                    //       Colores.green,
                    //       Colors.yellow,
                    //     ]),
                    // border: Border.all(color: Colores.darkblue, width: 5.0)
                  ),
                  width: 400,
                  height: 460,
                  child: const Drawer(elevation: 5.0, child: DrawerIndex()),
                )),
            //SECOND TRIANGLE COLOR YELLOW
            Positioned(
              top: 200,
              left: 213,
              child: Transform.rotate(
                  angle: math.pi + math.pi * 3 / 180,
                  child: ClipPath(
                      clipper: CustomClipPathTriangleLeft(),
                      child: SizedBox(
                          width: 65,
                          height: 155,
                          child: Container(color: Colores.yellow)))),
            ),
            //FIRST TRIANGLE COLOR BLUE
            Positioned(
              top: 200,
              left: 224,
              child: Transform.rotate(
                  angle: math.pi + math.pi * 3 / 180,
                  child: ClipPath(
                      clipper: CustomClipPathTriangleLeft(),
                      child: SizedBox(
                          width: 55,
                          height: 150,
                          child: Container(color: Colores.blue)))),
            ),
          ]),
    );
    // )
  }
}

//[CustmClipPath] CLASS WHICH DRAWS THE FIGURE OF THE DRAWER
// class CustomClipPath extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = Path();
//     path.moveTo(size.width * 0.1567000, size.height * 0.9906500);
//     path.lineTo(size.width * 0.0022000, size.height * 0.7441500);
//     path.lineTo(size.width * -0.0022000, size.height * -0.0038500);
//     path.lineTo(size.width * 0.9779500, size.height * 0.1721000);
//     path.lineTo(size.width * 0.9500000, size.height * 0.8955500);
//     path.lineTo(size.width * 0.1567000, size.height * 0.9906500);
//     path.close();

//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }

//[CustmClipPath] CLASS WHICH DRAWS THE FIGURE OF THE DRAWER
class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width * -0.0002800, 0);
    path.lineTo(size.width * 0.7206200, size.height * 0.1464200);
    path.lineTo(size.width * 0.6827000, size.height * 0.7966400);
    path.lineTo(size.width * 0.1907600, size.height * 0.9271800);
    path.lineTo(size.width * -0.0024000, size.height * 0.7591000);
    path.lineTo(size.width * -0.0002800, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

//[CustmClipPath] CLASS WHICH DRAWS THE FIGURE OF THE DRAWER
class CustomClipPathShadow extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width * -0.0002800, 0);
    path.lineTo(size.width * 0.7184800, size.height * 0.1956200);
    path.lineTo(size.width * 0.6827000, size.height * 0.7966400);
    path.lineTo(size.width * 0.1907600, size.height * 0.9271800);
    path.lineTo(size.width * -0.0024000, size.height * 0.7591000);
    path.lineTo(size.width * -0.0002800, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
