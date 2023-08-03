import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// TITLE TECHSTACK //
class TitleTechStack extends StatelessWidget {
  const TitleTechStack({super.key});

  @override
  Widget build(BuildContext context) {
    return
// Title Text [FittedBox] to maintain size when changing with screen size
        FittedBox(
      child: Padding(
        padding: const EdgeInsets.only(top: 120, left: 250),
        child: Text(
          'TECH STACK',
          style: GoogleFonts.montserrat(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 40),
        ),
      ),
    );
  }
}
