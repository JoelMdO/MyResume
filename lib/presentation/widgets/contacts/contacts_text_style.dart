import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension ContactsTitleTextStylesWhite on Text {
  Text contactsTextTitleStylesWhite() {
    return Text(data!,
        style: GoogleFonts.montserrat(
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600,
          fontSize: 17,
          color: Colors.white,
        ));
  }
}

extension ContactsTextStylesWhite on Text {
  Text contactsTextStylesWhite() {
    return Text(data!,
        style: GoogleFonts.montserrat(
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600,
          fontSize: 10,
          color: Colors.white,
        ));
  }
}

extension ContactsEmailTextStylesDesktop on Text {
  Text contactsEmailTextStylesDesktop() {
    return Text(
      data!,
      style: GoogleFonts.montserrat(
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600,
          color: Colors.black,
          fontSize: 12),
    );
  }
}

extension ContactsGithubTextStylesDesktop on Text {
  Text contactsGithubTextStylesDesktop() {
    return Text(
      data!,
      style: GoogleFonts.montserrat(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    );
  }
}

extension ContactsLinkedinTextStylesDesktop on Text {
  Text contactsLinkedinTextStylesDesktop() {
    return Text(
      data!,
      style: GoogleFonts.montserrat(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    );
  }
}

extension ContactsPhoneTextStylesDesktop on Text {
  Text contactsPhoneTextStylesDesktop() {
    return Text(
      data!,
      style: GoogleFonts.montserrat(
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
        fontSize: 13,
        color: Colors.black,
      ),
    );
  }
}

extension ContactsTitleTextStylesMobile on Text {
  Text contactsTextTitleStylesMobile() {
    return Text(data!,
        style: GoogleFonts.montserrat(
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600,
          fontSize: 14,
          color: Colors.white,
        ));
  }
}
