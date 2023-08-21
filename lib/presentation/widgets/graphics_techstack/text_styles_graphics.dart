import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///GRAPHICS TITLE TextStyle
extension GraphicTitleStyle on Text {
  Text graphicTitleStyle() {
    return Text(data!,
        style:
            GoogleFonts.montserrat(fontSize: 30, fontWeight: FontWeight.w800));
  }
}

///GRAPHICS TEXT TextStyle
extension GraphicTextStyle on Text {
  Text graphicTextStyle() {
    return Text(data!,
        style: GoogleFonts.montserrat(
            color: Colors.black, fontSize: 25, fontWeight: FontWeight.w700));
  }
}

///GRAPHICS PERCENT TextStyle
extension GraphicPercentTextStyle on Text {
  Text graphicPercentTextStyle() {
    return Text(data!,
        style: GoogleFonts.montserrat(
            color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600));
  }
}
