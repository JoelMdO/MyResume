import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/utils/constants/colors.dart';
import 'package:resume/utils/constants/screen_size.dart';

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
  Text textStyleSubtitleStyle(String type, BuildContext context) {
    Color color = Colors.black;
    double fontSize = 13;
    ScreenType myScreenType = ScreenType(context);
    //
    fontSize = myScreenType.isDesktop
        ? 25
        : myScreenType.isTablet
            ? 20
            : 13;
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
