import 'package:auto_size_text/auto_size_text.dart';
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

extension UXTechStackStyle on Text {
  Text uxTechStackStyle() {
    return Text(
      data!,
      style: GoogleFonts.notoSansKhojki(
          fontSize: 22,
          fontWeight: FontWeight.w800,
          color: Colores.blueTechLetter),
      textAlign: TextAlign.center,
    );
  }
}

extension CodeTechStackStyle on Text {
  Text codeTechStackStyle() {
    return Text(
      data!,
      style: GoogleFonts.notoSansKhojki(
          fontSize: 22,
          fontWeight: FontWeight.w800,
          color: Colores.orangeTechLetter),
      textAlign: TextAlign.center,
    );
  }
}

extension DataTechStackStyle on Text {
  Text dataTechStackStyle() {
    return Text(
      data!,
      style: GoogleFonts.notoSansKhojki(
          fontSize: 22,
          fontWeight: FontWeight.w800,
          color: Colores.greenTechLetter),
      textAlign: TextAlign.center,
    );
  }
}

extension OtherTechStackStyle on AutoSizeText {
  AutoSizeText otherTechStackStyle() {
    return AutoSizeText(
      data!,
      maxFontSize: 22,
      minFontSize: 18,
      style: GoogleFonts.notoSansKhojki(
          fontWeight: FontWeight.w800, color: Colores.blackTechLetter),
      textAlign: TextAlign.left,
    );
  }
}
