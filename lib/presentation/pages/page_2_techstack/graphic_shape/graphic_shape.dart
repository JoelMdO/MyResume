import 'package:flutter/material.dart';
import 'package:resume/presentation/pages/page_2_techstack/graphic_shape/code_figures.dart';
import 'package:resume/presentation/pages/page_2_techstack/graphic_shape/color_lines.dart';
import 'package:resume/presentation/pages/page_2_techstack/graphic_shape/hexagon.dart';
import 'package:resume/presentation/pages/page_2_techstack/graphic_shape/text_tech.dart';
import 'package:resume/utils/constants/screen_size.dart';

class GraphicShape extends StatefulWidget {
  const GraphicShape({super.key});

  @override
  State<GraphicShape> createState() => _GraphicShapeState();
}

class _GraphicShapeState extends State<GraphicShape> {
  @override
  Widget build(BuildContext context) {
    ScreenSize myScreenSize = ScreenSize(context);
    ScreenType myScreenType = ScreenType(context);

    return Center(
      child: SizedBox(
        width: myScreenType.isDesktop
            ? myScreenSize.screenWidth * 0.5
            : myScreenSize.screenWidth,
        height: myScreenType.isDesktop
            ? myScreenSize.screenHeight * 0.7
            : myScreenSize.screenHeight,
        child: Stack(
            alignment: AlignmentDirectional.topStart,
            fit: StackFit.loose,
            children: [
              myScreenType.isDesktop
                  ? const Center(child: Hexagon())
                  : myScreenType.isTablet
                      ? const Positioned(top: 165, left: 100, child: Hexagon())
                      : const Positioned(top: 165, left: 100, child: Hexagon()),
              ColorLine(type: 'blue_line'),
              ColorLine(type: 'orange_line'),
              CodeFigure(type: 'UX'),
              CodeFigure(type: 'Code'),
              CodeFigure(type: 'Data'),
              CodeFigure(type: 'Other'),
              TextTech(type: 'UX'),
              TextTech(type: 'Code'),
              TextTech(type: 'Data'),
              TextTech(type: 'Other'),
            ]),
      ),
    );
  }
}
