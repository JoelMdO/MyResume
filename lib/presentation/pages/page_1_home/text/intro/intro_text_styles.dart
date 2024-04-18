import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///INTRO Text TextSytle Desktop
extension IntroTextStyle on Text {
  Text introTextStyle(BuildContext context, String section) {
    //
    FontWeight fontWeight = FontWeight.normal;
    bool isMobile = MediaQuery.of(context).size.width <= 766;
    //
    if (section == 'title') {
      fontWeight = FontWeight.normal;
    } else {
      fontWeight = FontWeight.bold;
    }
    return Text(
      data!,
      style: GoogleFonts.montserrat(
          fontSize: isMobile ? 15 : 20, fontWeight: fontWeight),
    );
  }
}
