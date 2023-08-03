import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

//CONTACTOS DRAWER //
class ContactsDrawer extends StatelessWidget {
  const ContactsDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FittedBox(
              fit: BoxFit.fitWidth,
              child: Row(children: [
                const ImageIcon(
                  AssetImage('assets/images/Phone.png'),
                ),
                const Padding(padding: EdgeInsets.only(left: 5)),
                Text(
                  '+974-5502-1236',
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600, fontSize: 13),
                ),
              ])),
          //-- EMAIL /
          MouseRegion(
              cursor: SystemMouseCursors.click,
              child: TextButton(
                onPressed: () async {
                  final url =
                      Uri(scheme: 'mailto', path: 'joelmontesdeoca@proton.me');
                  if (await canLaunchUrl(url)) {
                    launchUrl(url);
                  } else {
                    // ignore: avoid_print
                    print("Can't launch $url");
                  }
                },
                child: FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Row(children: [
                      const ImageIcon(
                        AssetImage('assets/images/Envelope.png'),
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          ' joelmontesdeoca@proton.me',
                          style: GoogleFonts.montserrat(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontSize: 12),
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ])),
              )),
          //-- LINKEDIN//
          MouseRegion(
              cursor: SystemMouseCursors.click,
              child: TextButton(
                  onPressed: () {
                    launchUrl(Uri.parse(
                        'https://www.linkedin.com/in/joel-montesdeoca-lopez'));
                  },
                  child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Row(children: [
                        const ImageIcon(
                          AssetImage('assets/images/LinkedIn.png'),
                          color: Colors.black,
                        ),
                        const Padding(padding: EdgeInsets.only(left: 5)),
                        Text('joel-montesdeoca-lopez',
                            style: GoogleFonts.montserrat(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ))
                      ])))),
          //-- GITHUB//

          MouseRegion(
              cursor: SystemMouseCursors.click,
              child: TextButton(
                  onPressed: () {
                    launchUrl(Uri.parse('https://github.com/JoelMdO'));
                  },
                  child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Row(children: [
                        const ImageIcon(
                          AssetImage('assets/images/GitHub.png'),
                          color: Colors.black,
                        ),
                        const Padding(padding: EdgeInsets.only(left: 5)),
                        Text('github.com/JoelMdO',
                            style: GoogleFonts.montserrat(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ))
                      ])))),
        ],
      ),
    );
  }
}
