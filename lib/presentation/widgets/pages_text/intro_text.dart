import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroText extends StatelessWidget {
  const IntroText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: '- Passionate Flight Operations World Wide Specialist.\n',
            style: GoogleFonts.montserrat(
                fontSize: 20, fontWeight: FontWeight.normal),
            children: <TextSpan>[
          TextSpan(
            text: '- Ethical personality.\n',
            style: GoogleFonts.montserrat(
                fontSize: 20, fontWeight: FontWeight.normal),
          ),
          TextSpan(
            text:
                '- Delivering value in order to exceed expectations day-by-day.\n',
            style: GoogleFonts.montserrat(
                fontSize: 20, fontWeight: FontWeight.normal),
          ),
          TextSpan(
            text:
                '- Inclination to learn new skills, methodologies, and high tech.\n',
            style: GoogleFonts.montserrat(
                fontSize: 20, fontWeight: FontWeight.normal),
          ),
          TextSpan(
            text: '- Professional philosophy:',
            style: GoogleFonts.montserrat(
                fontSize: 20, fontWeight: FontWeight.normal),
          ),
          TextSpan(
            text: ' C3Each.',
            style: GoogleFonts.montserrat(
                fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ]));
  }
}
