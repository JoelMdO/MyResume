import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/titles/title_text_styles.dart';

// TITLE TECHSTACK //
class TitleTechStack extends StatelessWidget {
  const TitleTechStack({super.key});

  @override
  Widget build(BuildContext context) {
    return
// Title Text [FittedBox] to maintain size when changing with screen size
        FittedBox(
      child: Padding(
        padding: const EdgeInsets.only(top: 120, left: 250),
        child: const AutoSizeText('TECH STACK').titleStyle(),
      ),
    );
  }
}
