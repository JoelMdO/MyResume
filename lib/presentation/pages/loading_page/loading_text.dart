import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/utils/constants/colors.dart';

class LoadingText extends StatelessWidget {
  const LoadingText({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
        isRepeatingAnimation: true,
        totalRepeatCount: 3,
        animatedTexts: [
          ColorizeAnimatedText(
            'WELCOME',
            textStyle: GoogleFonts.montserrat(
                fontSize: 50, fontWeight: FontWeight.w600),
            colors: ColoresWelcome.names,
          ),
          ColorizeAnimatedText(
            'TO MY RESUME',
            textStyle: GoogleFonts.montserrat(
                fontSize: 40, fontWeight: FontWeight.w600),
            colors: ColoresWelcome.names,
          ),
          ColorizeAnimatedText(
            'BIENVENIDO',
            textStyle: GoogleFonts.montserrat(
                fontSize: 50, fontWeight: FontWeight.w600),
            colors: ColoresWelcome.names,
          ),
        ]);
  }
}
