import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/drawer/index_drawer.dart';
import 'package:resume/utils/constants/colors.dart';

class DrawerShape extends StatelessWidget {
  const DrawerShape({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: AlignmentDirectional.topStart,
        fit: StackFit.loose,
        children: [
          ClipPath(
              clipper: CustomClipPath(),
              child: Container(
                  width: 320,
                  height: 420,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colores.darkblue.withOpacity(0.7),
                        blurRadius: 5.0)
                  ]))),
          ClipPath(
            clipper: CustomClipPath(),
            child: const SizedBox(
              width: 300,
              height: 400,
              child: Drawer(elevation: 5.0, child: DrawerIndex()),
            ),
          )
        ]);
  }
}

//[CustmClipPath] CLASS WHICH DRAWS THE FIGURE OF THE DRAWER
class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width * 0.1567000, size.height * 0.9906500);
    path.lineTo(size.width * 0.0022000, size.height * 0.7441500);
    path.lineTo(size.width * -0.0022000, size.height * -0.0038500);
    path.lineTo(size.width * 0.9779500, size.height * 0.1721000);
    path.lineTo(size.width * 0.9500000, size.height * 0.8955500);
    path.lineTo(size.width * 0.1567000, size.height * 0.9906500);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
