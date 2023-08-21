import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/pages_text/skills/skills_text_styles.dart';

class SkillsText extends StatefulWidget {
  final String? text;
  final String textbold;
  const SkillsText({Key? key, required this.text, required this.textbold})
      : super(key: key);

  @override
  State<SkillsText> createState() => _SkillsTextState();
}

class _SkillsTextState extends State<SkillsText> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(widget.textbold).skillTextBoldStyle(),
      if (widget.text != null) Text(widget.text!).skillTextNormalStyle(),
    ]);
  }
}
