import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///BAR TextStyle
extension BarTextStyle on TypewriterAnimatedText {
  TypewriterAnimatedText typewriterAnimatedText(String data) {
    return TypewriterAnimatedText(data,
        textStyle:
            GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.bold));
  }
}
