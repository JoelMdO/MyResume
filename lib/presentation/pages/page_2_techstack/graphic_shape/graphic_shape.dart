import 'package:flutter/material.dart';
import 'package:resume/presentation/pages/page_2_techstack/graphic_shape/code_figures/code_figures.dart';
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
    double scaleWidth = myScreenSize.screenWidth / 151;
    //
    return FittedBox(
        fit: BoxFit.contain,
        child: SizedBox(
          width: myScreenType.isDesktop
              ? myScreenSize.screenWidth * 0.8
              : myScreenSize.screenWidth,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 15,
            children: [
              Align(
                  alignment: AlignmentDirectional.topCenter, child: Hexagon()),
              // Section 1: a Row that contains the Stack (allows future side widgets)
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CodeFigure(type: 'UX_figure'),
                    CodeFigure(type: 'Code_figure'),
                  ]),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ColorLine(type: 'blue_line'),
                    TextTech(type: 'UX_text'),
                    TextTech(type: 'Code_text'),
                    ColorLine(type: 'orange_line'),
                  ]),
              // Section 2: grouped rows for DB / Other items
              Row(
                  //  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CodeFigure(type: 'Data_figure'),
                    SizedBox(
                      width: 80 * scaleWidth,
                      child: // Add spacing between the two items
                          TextTech(type: 'Data_text'),
                    ),
                    //)
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CodeFigure(type: 'Other_figure'),
                    SizedBox(
                      width: 80 * scaleWidth,
                      child: TextTech(type: 'Other_text'),
                    ),
                  ])
            ],
          ),
        ));
  }
}
