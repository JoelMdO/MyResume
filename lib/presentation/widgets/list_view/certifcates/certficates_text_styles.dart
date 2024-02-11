import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///CERTIFICATES Title TextStle
extension TitleCertifcatesStyle on AutoSizeText {
  AutoSizeText titleCertificatesStyle() {
    return AutoSizeText(
      data!,
      minFontSize: 10,
      maxFontSize: 16,
      style: GoogleFonts.montserrat(
          fontWeight: FontWeight.bold, color: Colors.black),
    );
  }
}

///CERTIFICATES Subtitle TextStyle
extension SubTitleCertifcatesStyle on AutoSizeText {
  AutoSizeText subTitleCertificatesStyle() {
    return AutoSizeText(
      data!,
      minFontSize: 10,
      maxFontSize: 16,
      style: GoogleFonts.montserrat(
          fontWeight: FontWeight.normal, color: Colors.black),
    );
  }
}
