import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/strengths_chart/strengths_text_styles.dart';

class StrengthsText extends StatefulWidget {
  final String text;
  final String subtext;
  const StrengthsText({Key? key, required this.text, required this.subtext})
      : super(key: key);

  @override
  State<StrengthsText> createState() => _StrengthsTextState();
}

class _StrengthsTextState extends State<StrengthsText> {
  @override
  Widget build(BuildContext context) {
    if (widget.subtext.isNotEmpty) {
      return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(widget.text).strengthsSubTextStyle(),
        Text(widget.subtext).strengthsTextStyle()
      ]);
    } else {
      return Text(widget.text).strengthsSubTextStyle();
    }
  }
}
