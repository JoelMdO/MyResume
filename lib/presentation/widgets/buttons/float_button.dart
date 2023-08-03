import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/utils/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class FloatButton extends StatelessWidget {
  const FloatButton({super.key});

  @override
  Widget build(BuildContext context) {
// [SpeedDial] to allow to have 3 items once clicked the floatingbutton
    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      backgroundColor: Colores.green,
      overlayColor: Colores.yellow,
      overlayOpacity: 0.5,
      children: [
        SpeedDialChild(
          child: const Icon(Icons.arrow_back),
          label: 'Go Back',
          labelStyle: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            color: Colores.darkblue,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        SpeedDialChild(
          child: const Icon(Icons.dashboard_customize),
          label: 'Sections',
          labelStyle: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            color: Colores.darkblue,
          ),
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
        ),
        SpeedDialChild(
          child: const Icon(Icons.email),
          label: 'Send Email',
          labelStyle: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            color: Colores.darkblue,
          ),
          onTap: () {
            _launchEmail();
          },
        ),
      ],
    );
  }

  void _launchEmail() async {
    final url = Uri(scheme: 'mailto', path: 'joelmontesdeoca@proton.me');
    if (await canLaunchUrl(url)) {
      launchUrl(url);
    } else {
      // ignore: avoid_print
      print("Can't launch $url");
    }
  }
}
