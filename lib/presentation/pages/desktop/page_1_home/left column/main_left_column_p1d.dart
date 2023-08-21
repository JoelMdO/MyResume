import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/bar_menu/bar_button.dart';

class LeftColumnDesktop extends StatefulWidget {
  const LeftColumnDesktop({super.key});

  @override
  State<LeftColumnDesktop> createState() => _LeftColumnDesktopState();
}

class _LeftColumnDesktopState extends State<LeftColumnDesktop> {
  @override
  Widget build(BuildContext context) {
    return const Stack(
        alignment: AlignmentDirectional.topStart,
        fit: StackFit.loose,
        children: [
          //Skills Bar
          Positioned(
              top: 175,
              left: 10,
              child: SizedBox(
                  width: 320,
                  height: 320,
                  child: BarButton(
                    type: 'SKILLS &\n STRENGTHS',
                  ))),
          //Education Bar
          Positioned(
              top: 320,
              left: 120,
              child: SizedBox(
                  width: 320,
                  height: 320,
                  child: BarButton(
                    type: 'EDUCATION & \n TECH STACK',
                  ))),
          //Career Bar
          Positioned(
              top: 470,
              left: 220,
              child: SizedBox(
                  width: 320,
                  height: 320,
                  child: BarButton(
                    type: 'CAREER &\n PROJECTS',
                  ))),
        ]);
  }
}
