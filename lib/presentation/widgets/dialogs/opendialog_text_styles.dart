import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///---------OPEN DIALOG----------------//
///OPEN DIALOG title TextStyle
extension OpenDialogTitleStyle on Text {
  Text openDialogTitleStyle() {
    return Text(data!,
        style: GoogleFonts.montserrat(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            fontSize: 20));
  }
}

///OPEN DIALOG button TextStyle
extension OpenDialogButtonStyle on Text {
  Text openDialogButtonStyle() {
    return Text(data!,
        style: GoogleFonts.montserrat(
            color: Colors.white, fontWeight: FontWeight.w400, fontSize: 15));
  }
}

///CONTACTS DIALOG title TextStyle
extension ContactsDialogTitleStyle on Text {
  Text contactsDialogTitleStyle() {
    return Text(data!,
        style: GoogleFonts.montserrat(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w800,
            color: Colors.white,
            fontSize: 20));
  }
}
