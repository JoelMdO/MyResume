import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/utils/constants/colors.dart';

extension ButtonDrawerTitleTextStyle on TypewriterAnimatedText {
  TypewriterAnimatedText typewriterAnimatedText(String data) {
    return TypewriterAnimatedText(data,
        textStyle: GoogleFonts.montserrat(
            fontSize: 13,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w800));
  }
}

extension ProjectsButtonTitleTextStyle on Text {
  Text projectsButtonTitleTextStyle() {
    return Text(data!,
        style: GoogleFonts.montserrat(
            color: Colors.white, fontWeight: FontWeight.bold));
  }
}

extension DownloadButtonTitleTextStyle on AutoSizeText {
  AutoSizeText downloadButtonTitleTextStyle() {
    return AutoSizeText(data!,
        maxFontSize: 20,
        minFontSize: 8,
        style: GoogleFonts.montserrat(
            color: Colors.white, fontWeight: FontWeight.bold));
  }
}

extension EducationButtonTitleTextStyle on Text {
  Text educationButtonTitleTextStyle() {
    return Text(data!,
        style: GoogleFonts.montserrat(
            color: Colors.white, fontWeight: FontWeight.bold));
  }
}

floatButtonTitleTextStyle() {
  return GoogleFonts.montserrat(
    fontWeight: FontWeight.bold,
    color: Colores.darkblue,
  );
}

extension ScaffoldTitleTextStyle on Text {
  Text scaffoldTitleTextStyle() {
    return Text(data!,
        style: GoogleFonts.montserrat(
            color: Colores.blackTechLetter,
            fontSize: 13,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w800));
  }
}
