import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/pages_text/intro/intro_text_styles.dart';

class IntroText extends StatefulWidget {
  final String text;
  final String? subtext;
  const IntroText({Key? key, required this.text, this.subtext})
      : super(key: key);

  @override
  State<IntroText> createState() => _IntroTextState();
}

class _IntroTextState extends State<IntroText> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(children: [
        Text(widget.text).introTextStyle(),
        if (widget.subtext != null) Text(widget.subtext!).introSubTextStyle(),
      ])
    ]);
  }
}
