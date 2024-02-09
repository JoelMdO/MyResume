import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:resume/presentation/pages/page_1_home/mobile/bottom_column/figure_left_bottom_p1.dart';
import 'package:resume/presentation/pages/page_1_home/mobile/bottom_column/figure_right_bottom_p1.dart';
import 'package:resume/presentation/widgets/buttons/download_button.dart';
import 'package:resume/utils/constants/screen_size.dart';

class BottomColumn extends StatefulWidget {
  const BottomColumn({super.key});

  @override
  State<BottomColumn> createState() => _BottomColumnState();
}

class _BottomColumnState extends State<BottomColumn> {
  @override
  Widget build(BuildContext context) {
    ScreenSize myScreenSize = ScreenSize(context);

    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      //Left Shape
      SizedBox(
          width: myScreenSize.screenWidth * 0.25,
          height: myScreenSize.screenHeight * 0.2,
          child: const FigureBottomColumnLeftMobile()),
      //Triangle and download button
      SizedBox(
          width: myScreenSize.screenWidth * 0.4,
          height: myScreenSize.screenHeight * 0.2,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Stack(fit: StackFit.loose, children: [
              Image.asset('assets/images/TriangleAPW.png'),
              const FittedBox(fit: BoxFit.fitWidth, child: DownloadButton()),
            ]),
          )),
      //Right Shape with contacts.
      Align(
          alignment: Alignment.centerRight,
          child: FadeInRightBig(
              duration: const Duration(seconds: 1),
              delay: const Duration(seconds: 2),
              child: SizedBox(
                width: myScreenSize.screenWidth * 0.35,
                height: myScreenSize.screenHeight * 0.2,
                child: const FigureBottomColumnRightMobile(),
              )))
    ]);
  }
}
