import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///CERTIFICATES Title TextStle
extension TitleCertifcatesStyle on Text {
  Text titleCertificatesStyle() {
    return Text(
      data!,
      style: GoogleFonts.montserrat(
          fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
    );
  }
}

///CERTIFICATES Subtitle TextStyle
extension SubTitleCertifcatesStyle on Text {
  Text subTitleCertificatesStyle() {
    return Text(
      data!,
      style: GoogleFonts.montserrat(
          fontWeight: FontWeight.normal, fontSize: 16, color: Colors.black),
    );
  }
}
