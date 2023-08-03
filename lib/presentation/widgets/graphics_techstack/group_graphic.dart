import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:resume/presentation/widgets/graphics_techstack/advanced_graphic.dart';
import 'package:resume/presentation/widgets/graphics_techstack/beginner_graphic.dart';
import 'package:resume/presentation/widgets/graphics_techstack/intermediate_graphic_p2d.dart';

/// Techstack has been graded in Basic, Intermediate and Advanced.
/// GrapichGroup wraps the three widgets of them in a specific position
class GraphicGroup extends StatefulWidget {
  const GraphicGroup({Key? key}) : super(key: key);

  @override
  GraphicGroupState createState() => GraphicGroupState();
}

class GraphicGroupState extends State<GraphicGroup> {
// TECHSTACK GROUP //
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fitWidth,
      child: SizedBox(
        width: 1000,
        height: 750,
        child: Stack(
            alignment: AlignmentDirectional.topStart,
            fit: StackFit.loose,
            children: <Widget>[
              //ADVANCED//
              Positioned(
                  top: 115,
                  left: 480,
                  child: FadeIn(
                    duration: const Duration(seconds: 1),
                    delay: const Duration(seconds: 3),
                    child: const AdvancedGraphicP2D(),
                  )),
              //INTERMEDIATE//
              Positioned(
                  top: 210,
                  left: 250,
                  child: FadeIn(
                    duration: const Duration(seconds: 1),
                    delay: const Duration(seconds: 2),
                    child: const IntermediateGraphicP2D(),
                  )),
              //BEGINER//
              const Positioned(
                top: 295,
                left: 10,
                child: BeginnerGraphicP2D(),
              ),
            ]),
      ),
    );
  }
}
