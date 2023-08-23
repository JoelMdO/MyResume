import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///INTRO Text TextSytle Desktop
extension IntroDesktopTextStyle on Text {
  Text introDesktopTextStyle() {
    return Text(
      data!,
      style:
          GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.normal),
    );
  }
}

///INTRO Text TextSytle Mobile
extension IntroMobileTextStyle on Text {
  Text introMobileTextStyle() {
    return Text(
      data!,
      style:
          GoogleFonts.montserrat(fontSize: 15, fontWeight: FontWeight.normal),
    );
  }
}

///INTRO SubText TextStyle Mobile
extension IntroDesktopSubTextStyle on Text {
  Text introDesktopSubTextStyle() {
    return Text(
      data!,
      style: GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}

///INTRO SubText TextStyle Mobile
extension IntroMobileSubTextStyle on Text {
  Text introMobileSubTextStyle() {
    return Text(
      data!,
      style: GoogleFonts.montserrat(fontSize: 15, fontWeight: FontWeight.bold),
    );
  }
}
