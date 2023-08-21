import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///STRENGTHS TEXT TextStyle
extension StrengthsTextStyle on Text {
  Text strengthsTitleStyle() {
    return Text(data!,
        style: GoogleFonts.montserrat(
            fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black));
  }
}

///STRENGTHS SUBTEXT TextStyle
extension StrengthsSubTextStyle on Text {
  Text strengthsSubTextStyle() {
    return Text(data!,
        style: GoogleFonts.montserrat(
            fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black));
  }
}
