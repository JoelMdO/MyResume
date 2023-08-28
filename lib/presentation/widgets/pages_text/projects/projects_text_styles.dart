import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/utils/constants/colors.dart';

///PROJECTS Title Text Style
extension ProjectsSizeTextTitle on AutoSizeText {
  AutoSizeText projectsSizeTextTitleStyle() {
    return AutoSizeText(
      data!,
      style: GoogleFonts.montserrat(
          fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
}

///PROJECTS Subtitle Text Style
extension ProjectsSizeTextSubtitle on AutoSizeText {
  AutoSizeText projectsSizeTextSubtitleStyle() {
    return AutoSizeText(
      data!,
      style: GoogleFonts.montserrat(
          fontWeight: FontWeight.normal, color: Colors.black),
    );
  }
}

///PROJECTS Body Title Text Style
extension ProjectsSizeTextBodyTitle on AutoSizeText {
  AutoSizeText projectsSizeTitleTextBodyTitleStyle() {
    return AutoSizeText(
      data!,
      style: GoogleFonts.montserrat(
          fontWeight: FontWeight.bold, color: Colores.red),
    );
  }
}

///PROJECTS BodyText TextStle
extension ProjectsSizeTextBodyText on AutoSizeText {
  AutoSizeText projectsSizeTextBodyTextStyle() {
    return AutoSizeText(
      data!,
      style: GoogleFonts.montserrat(
          fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
    );
  }
}
