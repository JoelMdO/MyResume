import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///---------EDUCATION----------------//
///EDUCATION BODYTEXT TextStyle
extension EducationTitleextStyle on Text {
  Text educationTitleTextStyle() {
    return Text(data!,
        style: GoogleFonts.montserrat(
            fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black));
  }
}

///EDUCATION BODYTEXT TextStyle
extension EducationDateTextStyle on Text {
  Text educationDateTextStyle() {
    return Text(data!,
        style: GoogleFonts.montserrat(
            fontSize: 16, fontWeight: FontWeight.normal, color: Colors.black));
  }
}
