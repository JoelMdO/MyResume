import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/drawer/text_styles_drawer.dart';
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
                const Text('+974-5502-1236').drawerPhoneTextStyle(),
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
                        child: const Text(' joelmontesdeoca@proton.me')
                            .drawerEmailTextStyle(),
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
                        const Text('joel-montesdeoca-lopez')
                            .drawerLinksTextStyle(),
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
                        const Text('github.com/JoelMdO').drawerLinksTextStyle(),
                      ])))),
        ],
      ),
    );
  }
}
