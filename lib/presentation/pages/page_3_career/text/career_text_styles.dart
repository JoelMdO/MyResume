import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///CAREER TITLE TextStyle
extension CareerTitleStyle on AutoSizeText {
  AutoSizeText careerTitleStyle() {
    return AutoSizeText(data!,
        style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold, color: Colors.white));
  }
}

///CAREER SUBTITLE TextStyle
extension CareerSubTitleStyle on AutoSizeText {
  AutoSizeText careerSubTitleStyle() {
    return AutoSizeText(data!,
        style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold, color: Colors.white.withOpacity(0.5)));
  }
}

///CAREER BODY TextStyle
extension CareerBodyTitleStyle on Text {
  Text careerBodyTitleStyle() {
    return Text(data!,
        textAlign: TextAlign.center,
        style: GoogleFonts.montserrat(
            fontStyle: FontStyle.italic,
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.black));
  }
}

///CAREER BODYTITLE TextStyle
extension CareerBodySubTitleStyle on Text {
  Text careerBodySubTitleStyle() {
    return Text(data!,
        textAlign: TextAlign.center,
        style: GoogleFonts.montserrat(
            fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black));
  }
}

///CAREER BODYTEXT TextStyle
extension CareerBodyTextStyle on Text {
  Text careerBodyTextStyle() {
    return Text(data!,
        textAlign: TextAlign.center,
        style: GoogleFonts.montserrat(
            fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black));
  }
}
