import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///INTRO Text TextStle
extension IntroTextStyle on Text {
  Text introTextStyle() {
    return Text(
      data!,
      style:
          GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.normal),
    );
  }
}

///INTRO SubText TextStle
extension IntroSubTextStyle on Text {
  Text introSubTextStyle() {
    return Text(
      data!,
      style: GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
