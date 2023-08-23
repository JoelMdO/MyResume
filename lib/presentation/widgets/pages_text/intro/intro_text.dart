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
    bool isMobile = MediaQuery.of(context).size.width <= 766;

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      FittedBox(
        fit: BoxFit.fill,
        child: isMobile
            ? Row(children: [
                Text(widget.text).introMobileTextStyle(),
                if (widget.subtext != null)
                  Text(widget.subtext!).introMobileSubTextStyle(),
              ])
            : Row(children: [
                Text(widget.text).introDesktopTextStyle(),
                if (widget.subtext != null)
                  Text(widget.subtext!).introDesktopSubTextStyle(),
              ]),
      ),
    ]);
  }
}
