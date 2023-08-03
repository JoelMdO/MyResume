import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:resume/presentation/pages/tablet/page_1_home/bottom_column_p1t/figure_left_bottom_p1t.dart';
import 'package:resume/presentation/pages/tablet/page_1_home/bottom_column_p1t/figure_right_bottom_p1t.dart';
import 'package:resume/presentation/widgets/contacts.dart';
import 'package:resume/presentation/widgets/buttons/download_button.dart';

class BottomColumnTablet extends StatefulWidget {
  const BottomColumnTablet({super.key});

  @override
  State<BottomColumnTablet> createState() => _BottomColumnTabletState();
}

class _BottomColumnTabletState extends State<BottomColumnTablet> {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      //Left Shape
      const FigureBottomColumnLeft(),
      //Triangle and download button
      Flexible(
        flex: 2,
        child: Stack(fit: StackFit.loose, children: [
          Align(
              alignment: AlignmentDirectional.bottomCenter,
              child: Image.asset('assets/images/TriangleAPW.png')),
          const Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: SizedBox(width: 200, child: DownloadButton()),
          )
        ]),
      ),
      //Right Shape with contacts.
      Align(
          alignment: Alignment.centerRight,
          child: FadeInRightBig(
              duration: const Duration(seconds: 1),
              delay: const Duration(seconds: 2),
              child: const Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  fit: StackFit.loose,
                  children: <Widget>[
                    FigureBottomColumnRight(),
                    Positioned(
                        top: 45,
                        left: 0,
                        child:
                            SizedBox(width: 200, child: ContactsRightColumn())),
                  ]))),
    ]);
  }
}
