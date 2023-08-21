import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///SKILLTEXT Bold TextStle
extension SkillTextBoldStyle on Text {
  Text skillTextBoldStyle() {
    return Text(
      data!,
      style: GoogleFonts.montserrat(
          fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
    );
  }
}

///SKILLTEXT Normal TextStle
extension SkillTextNormalStyle on Text {
  Text skillTextNormalStyle() {
    return Text(
      data!,
      style: GoogleFonts.montserrat(
          fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black),
    );
  }
}
