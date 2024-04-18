import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/utils/constants/colors.dart';

///GRAPHICS TITLE TextStyle
extension TechStackTitleStyle on Text {
  Text textStyleTitleStyle() {
    return Text(
      data!,
      style: GoogleFonts.notoSansKhojki(
        fontSize: 30,
        fontWeight: FontWeight.w800,
      ),
      textAlign: TextAlign.center,
    );
  }
}

extension TechStackSubtitleStyle on Text {
  Text textStyleSubtitleStyle(String type, bool isDesktop) {
    Color color = Colors.black;
    double fontSize = 13;
    //
    fontSize = isDesktop ? 30 : 13;
    switch (type) {
      case 'ux':
        color = Colores.blueTechLetter;
      case 'code':
        color = Colores.orangeTechLetter;
      case 'data':
        color = Colores.greenTechLetter;
      case 'other':
        color = Colores.blackTechLetter;
    }
    return Text(
      data!,
      style: GoogleFonts.notoSansKhojki(
          fontSize: fontSize, fontWeight: FontWeight.w800, color: color),
      textAlign: TextAlign.center,
    );
  }
}
