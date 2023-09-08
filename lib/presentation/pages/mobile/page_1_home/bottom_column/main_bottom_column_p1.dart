import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:resume/presentation/pages/mobile/page_1_home/bottom_column/figure_left_bottom_p1.dart';
import 'package:resume/presentation/pages/mobile/page_1_home/bottom_column/figure_right_bottom_p1.dart';
import 'package:resume/presentation/widgets/buttons/download_button.dart';

class BottomColumn extends StatefulWidget {
  const BottomColumn({super.key});

  @override
  State<BottomColumn> createState() => _BottomColumnState();
}

class _BottomColumnState extends State<BottomColumn> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      //Left Shape
      SizedBox(
          width: screenWidth * 0.25,
          height: screenHeight * 0.2,
          child: const FigureBottomColumnLeftMobile()),
      //Triangle and download button
      SizedBox(
          width: screenWidth * 0.4,
          height: screenHeight * 0.2,
          child: Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Stack(fit: StackFit.loose, children: [
              Image.asset('assets/images/TriangleAPW.png'),
              const Positioned(
                bottom: 0,
                left: 15,
                child:
                    FittedBox(fit: BoxFit.scaleDown, child: DownloadButton()),
              )
            ]),
          )),
      //Right Shape with contacts.
      Align(
          alignment: Alignment.centerRight,
          child: FadeInRightBig(
              duration: const Duration(seconds: 1),
              delay: const Duration(seconds: 2),
              child: SizedBox(
                width: screenWidth * 0.35,
                height: screenHeight * 0.2,
                child: const FigureBottomColumnRightMobile(),
              )))
    ]);
  }
}
