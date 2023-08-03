import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/presentation/widgets/pages_text/intro_text.dart';

// TITLE HOME, NAME //
// ignore: non_constant_identifier_names
class TituloHome extends StatelessWidget {
  const TituloHome({super.key});

  @override
  Widget build(BuildContext context) {
    return
// Title Text [FittedBox] to maintain size when changing with screen size
        FittedBox(
      child: Column(
        children: [
          Text(
            'Joel Montes de Oca Lopez',
            style: GoogleFonts.montserrat(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w800,
                fontSize: 50),
          ),
//[introText] is the text retrieved from utils/library
          const IntroText(),
        ],
      ),
    );
  }
}
