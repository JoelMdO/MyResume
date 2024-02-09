import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// TITLE TextStyle
extension TitleStyle on Text {
  Text titleStyle() {
    return Text(data!,
        style: GoogleFonts.montserrat(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontSize: 30));
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
