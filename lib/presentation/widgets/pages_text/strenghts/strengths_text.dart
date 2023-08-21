import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/pages_text/strenghts/strengths_text_styles.dart';

class StrengthsText extends StatefulWidget {
  final String text;
  final String? subtext;
  const StrengthsText({Key? key, required this.text, required this.subtext})
      : super(key: key);

  @override
  State<StrengthsText> createState() => _StrengthsTextState();
}

class _StrengthsTextState extends State<StrengthsText> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(widget.text).strengthsTitleStyle(),
      if (widget.subtext != null) Text(widget.subtext!).strengthsSubTextStyle(),
    ]);
  }
}
