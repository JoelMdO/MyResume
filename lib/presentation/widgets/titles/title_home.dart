import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/pages_text/intro/intro_text.dart';
import 'package:resume/presentation/widgets/pages_text/intro/intro_text_list.dart';
import 'package:resume/presentation/widgets/titles/title_text_styles.dart';

// TITLE HOME, NAME //
// ignore: non_constant_identifier_names
class TituloHome extends StatelessWidget {
  const TituloHome({super.key});

  @override
  Widget build(BuildContext context) {
    return
// Title Text [FittedBox] to maintain size when changing with screen size
        Column(children: [
      FittedBox(
          child: const AutoSizeText(
        'Joel Montes de Oca Lopez',
      ).nameTitleStyle()),
//[introText] is the text retrieved from utils/library
      const Padding(padding: EdgeInsets.only(top: 15)),
      Expanded(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: IntroTextList.introTextInfo.length,
          itemBuilder: (context, index) {
            /// INTRO TEXT IS OBTAINED FROM THE FOLDER PAGES TEXT
            /// INTRO
            return IntroText(
              text: IntroTextList.introTextInfo[index].text,
              subtext: IntroTextList.introTextInfo[index].subtext,
            );
          },
        ),
      ),
    ]);
  }
}
