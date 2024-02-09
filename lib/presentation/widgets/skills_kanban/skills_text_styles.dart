import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///SKILLTEXT Bold TextStle
extension SkillTextBoldStyle on AutoSizeText {
  AutoSizeText skillTextBoldStyle() {
    return AutoSizeText(
      data!,
      minFontSize: 15,
      maxFontSize: 40,
      softWrap: true,
      maxLines: 3,
      textAlign: TextAlign.center,
      style: GoogleFonts.montserrat(
          fontWeight: FontWeight.bold, color: Colors.black),
    );
  }
}

///SKILLTEXT Normal TextStle
extension SkillTextNormalStyle on Text {
  Text skillTextNormalStyle() {
    return Text(
      data!,
      style: GoogleFonts.montserrat(
          fontSize: 17, fontWeight: FontWeight.normal, color: Colors.black),
    );
  }
}
