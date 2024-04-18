import 'package:flutter/material.dart';
import 'package:resume/utils/constants/mixin/text_tech_mixin.dart';

// ignore: must_be_immutable
class TextTech extends StatefulWidget {
  String type;
  TextTech({super.key, required this.type});

  @override
  State<TextTech> createState() => _TextTechState();
}

class _TextTechState extends State<TextTech> with TextTechMixin {
  bool animationStarted = false;

  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 3500), () {
      setState(() {
        animationStarted = true;
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    animationStarted;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
        opacity: animationStarted ? 1.0 : 0,
        duration: Duration(milliseconds: 1000 + (animationStarted ? 0 : 1500)),
        child: textType(context, widget.type));
  }
}
