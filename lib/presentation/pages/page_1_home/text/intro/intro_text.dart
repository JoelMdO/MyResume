import 'package:flutter/material.dart';
import 'package:resume/presentation/pages/page_1_home/text/intro/intro_text_styles.dart';

class IntroText extends StatefulWidget {
  final String text;
  final String? subtext;
  const IntroText({super.key, required this.text, this.subtext});

  @override
  State<IntroText> createState() => _IntroTextState();
}

class _IntroTextState extends State<IntroText> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      FittedBox(
        fit: BoxFit.fill,
        child: Row(children: [
          Text(widget.text).introTextStyle(context, 'title'),
          if (widget.subtext != null)
            Text(widget.subtext!).introTextStyle(context, 'subtitle')
        ]),
      ),
    ]);
  }
}
