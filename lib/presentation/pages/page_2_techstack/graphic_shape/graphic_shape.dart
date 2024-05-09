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
    double scaleHeight = myScreenSize.screenHeight / 1304;
    //
    return FittedBox(
        fit: BoxFit.contain,
        child: SizedBox(
            width: myScreenType.isDesktop
                ? myScreenSize.screenWidth * 0.8
                : myScreenSize.screenWidth,
            height: myScreenSize.screenHeight * 0.8,
            child: Stack(
                alignment: AlignmentDirectional.topStart,
                fit: StackFit.loose,
                children: [
                  const Align(
                      alignment: AlignmentDirectional.topCenter,
                      child: Hexagon()),
                  Positioned(
                      top: myScreenType.isDesktop
                          ? 330 * scaleHeight
                          : 250 * scaleHeight,
                      left: 10 * scaleWidth,
                      child: const ColorLine(type: 'blue_line')),
                  Positioned(
                      top: myScreenType.isDesktop
                          ? 330 * scaleHeight
                          : 270 * scaleHeight,
                      left: myScreenType.isDesktop
                          ? 10 * scaleWidth * scaleHeight
                          : 15 * scaleWidth,
                      child: const CodeFigure(type: 'UX_figure')),
                  Positioned(
                      top: myScreenType.isDesktop
                          ? 420 * scaleHeight
                          : 395 * scaleHeight,
                      left: 20 * scaleWidth,
                      child: TextTech(type: 'UX_text')),
                  Positioned(
                      top: myScreenType.isDesktop
                          ? 320 * scaleHeight
                          : 250 * scaleHeight,
                      right: 10 * scaleWidth,
                      child: const ColorLine(type: 'orange_line')),
                  Positioned(
                      top: myScreenType.isDesktop
                          ? 330 * scaleHeight
                          : 250 * scaleHeight,
                      right: 10 * scaleWidth,
                      child: const CodeFigure(type: 'Code_figure')),
                  Positioned(
                      top: myScreenType.isDesktop
                          ? 420 * scaleHeight
                          : 395 * scaleHeight,
                      right: 20 * scaleWidth,
                      child: TextTech(type: 'Code_text')),
                  Positioned(
                      top: myScreenType.isDesktop
                          ? 520 * scaleHeight
                          : 600 * scaleHeight,
                      left: myScreenType.isDesktop
                          ? 40 * scaleWidth
                          : myScreenType.isTablet
                              ? 50 * scaleWidth
                              : 30 * scaleWidth,
                      child: Row(children: [
                        const CodeFigure(type: 'Data_figure'),
                        TextTech(type: 'Data_text')
                      ])),
                  Positioned(
                      bottom: myScreenType.isDesktop
                          ? scaleHeight
                          : 65 * scaleHeight,
                      left: myScreenType.isDesktop
                          ? 20 * scaleWidth
                          : myScreenType.isTablet
                              ? 30 * scaleWidth
                              : 2 * scaleWidth,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const CodeFigure(type: 'Other_figure'),
                            TextTech(type: 'Other_text'),
                          ])),
                ])));
  }
}
