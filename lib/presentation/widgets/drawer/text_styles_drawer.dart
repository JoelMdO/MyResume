import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///DRAWER CONTACT TextStyle
extension DrawerPhoneTextStyle on Text {
  Text drawerPhoneTextStyle() {
    return Text(data!,
        style:
            GoogleFonts.montserrat(fontWeight: FontWeight.w600, fontSize: 13));
  }
}

extension DrawerEmailTextStyle on Text {
  Text drawerEmailTextStyle() {
    return Text(data!,
        style: GoogleFonts.montserrat(
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
            color: Colors.black,
            fontSize: 12));
  }
}

extension DrawerLinksTextStyle on Text {
  Text drawerLinksTextStyle() {
    return Text(data!,
        style: GoogleFonts.montserrat(
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ));
  }
}
