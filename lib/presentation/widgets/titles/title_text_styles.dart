import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// TITLE TextStyle
extension TitleStyle on AutoSizeText {
  AutoSizeText titleStyle() {
    return AutoSizeText(data!,
        minFontSize: 30,
        maxFontSize: 40,
        style: GoogleFonts.montserrat(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
        ));
  }
}

///NAME TITLE TextStyle
extension NameTitleStyle on AutoSizeText {
  AutoSizeText nameTitleStyle() {
    return AutoSizeText(data!,
        minFontSize: 45,
        maxFontSize: 50,
        style: GoogleFonts.montserrat(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w800,
        ));
  }
}
