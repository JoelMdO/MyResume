import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StrengthsText extends StatelessWidget {
  const StrengthsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: '- Flexibility and adaptability:',
            style: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.bold),
            children: <TextSpan>[
          TextSpan(
            text: ' “The other side of the perspective”.\n\n',
            style: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.normal),
          ),
          TextSpan(
            text: '- Innovation and creativity',
            style: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: ' to solve problems and enhance processes.\n\n',
            style: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.normal),
          ),
          TextSpan(
            text: '- Passion for continuous learning.\n\n',
            style: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.normal),
          ),
          TextSpan(
            text: '- Leader and empower Individuals on the Team:',
            style: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.normal),
          ),
          TextSpan(
            text: ' “Focus on people”.\n\n',
            style: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: '- Ethics and commitment to excellence.\n\n',
            style: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ]));
  }
}
