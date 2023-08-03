import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// TITLE PROJECTS //
class TituloProjects extends StatelessWidget {
  const TituloProjects({super.key});

  @override
  Widget build(BuildContext context) {
    return
// Title Text [FittedBox] to maintain size when changing with screen size
        FittedBox(
      child: Padding(
        padding: const EdgeInsets.only(top: 120, left: 250),
        child: Text(
          'PROJECTS',
          style: GoogleFonts.montserrat(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 40),
        ),
      ),
    );
  }
}
