import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///---------EDUCATION----------------//
///EDUCATION BODYTEXT TextStyle
extension EducationTitleextStyle on AutoSizeText {
  AutoSizeText educationTitleTextStyle() {
    return AutoSizeText(data!,
        minFontSize: 12,
        maxFontSize: 17,
        style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold, color: Colors.black));
  }
}

///EDUCATION BODYTEXT TextStyle
extension EducationDateTextStyle on AutoSizeText {
  AutoSizeText educationDateTextStyle() {
    return AutoSizeText(data!,
        minFontSize: 12,
        maxFontSize: 17,
        style: GoogleFonts.montserrat(
            fontWeight: FontWeight.normal, color: Colors.black));
  }
}
