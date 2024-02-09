import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///STRENGTHS TEXT TextStyle
extension StrengthsTitleTextStyle on Text {
  Text strengthsTitleStyle() {
    return Text(
      data!,
      textAlign: TextAlign.center,
      style: GoogleFonts.mcLaren(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

///STRENGTHS SUBTEXT TextStyle
extension StrengthsSubTextStyle on Text {
  Text strengthsSubTextStyle() {
    return Text(
      data!,
      style: GoogleFonts.inter(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}

///STRENGTHS SUBTEXT TextStyle
extension StrengthsTextStyle on Text {
  Text strengthsTextStyle() {
    return Text(
      data!,
      style: GoogleFonts.inter(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
