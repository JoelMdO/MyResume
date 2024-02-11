import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///PROJECTS Page Title Text Style
extension ProjectsSizeTextTitle on AutoSizeText {
  AutoSizeText projectsSizeTextTitleStyle() {
    return AutoSizeText(
      data!,
      minFontSize: 20,
      maxFontSize: 40,
      style: GoogleFonts.montserrat(
          fontWeight: FontWeight.bold, color: Colors.black),
    );
  }
}

///PROJECTS CarrouselTitle Text Style
extension CarrouselProjectsSizeTextTitle on Text {
  Text carrouselProjectsSizeTextTitleStyle(color) {
    return Text(
      data!,
      style: GoogleFonts.inter(
          fontWeight: FontWeight.bold, color: color, fontSize: 16),
    );
  }
}

///PROJECTS Subtitle Text Style
extension ProjectsSizeTextSubtitle on Text {
  Text projectsSizeTextSubtitleStyle() {
    return Text(
      data!,
      style: GoogleFonts.montserrat(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
    );
  }
}

///PROJECTS Body Title Text Style
extension ProjectsSizeTextBodyTitle on AutoSizeText {
  AutoSizeText projectsSizeTextBodyStyle() {
    return AutoSizeText(
      data!,
      softWrap: true,
      maxLines: 2,
      minFontSize: 14,
      maxFontSize: 16,
      textAlign: TextAlign.center,
      style: GoogleFonts.montserrat(
          fontWeight: FontWeight.bold, color: Colors.black),
    );
  }
}

///PROJECTS Body Title Text Style
extension ProjectsSizeTextClicMessageTitle on AutoSizeText {
  AutoSizeText projectsSizeTextClicMessageStyle() {
    return AutoSizeText(
      data!,
      softWrap: true,
      minFontSize: 14,
      maxFontSize: 16,
      textAlign: TextAlign.center,
      style: GoogleFonts.montserrat(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.normal,
          color: Colors.black),
    );
  }
}

///PROJECTS BodyText TextStle
extension ProjectsSizeTextBodyText on AutoSizeText {
  AutoSizeText projectsSizeTextBodyTextStyle() {
    return AutoSizeText(
      data!,
      maxLines: 10,
      softWrap: true,
      minFontSize: 16,
      maxFontSize: 18,
      textAlign: TextAlign.center,
      style: GoogleFonts.montserrat(
          fontWeight: FontWeight.normal, color: Colors.black),
    );
  }
}

///PROJECTS NonRepo Text Style
extension NonReporText on Text {
  Text nonRepoTextStyle() {
    return Text(
      data!,
      style: GoogleFonts.montserrat(
          fontWeight: FontWeight.bold, color: Colors.black, fontSize: 8),
    );
  }
}
