import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SkillsText extends StatelessWidget {
  const SkillsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: '-	Multicultural',
            style: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.bold),
            children: <TextSpan>[
          TextSpan(
            text: ' complex integrated collaboration and negotiation.\n\n',
            style: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.normal),
          ),
          TextSpan(
            text: '- Project Management',
            style: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: ' by setting a clear direction, following',
            style: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.normal),
          ),
          TextSpan(
            text: ' methodologies as:',
            style: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.normal),
          ),
          TextSpan(
            text: ' Agile, Shape Up.\n\n',
            style: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: '- Data Analyst\n\n',
            style: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.normal),
          ),
          TextSpan(
            text: '- Business process re-engineering\n\n',
            style: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: '- Software development, UX/UI\n\n',
            style: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.normal),
          ),
        ]));
  }
}
