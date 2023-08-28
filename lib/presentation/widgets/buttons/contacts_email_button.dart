import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/contacts/contacts_text_style.dart';
import 'package:resume/utils/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsEmailButton extends StatefulWidget {
  const ContactsEmailButton({super.key});

  @override
  State<ContactsEmailButton> createState() => _ContactsEmailButtonState();
}

class _ContactsEmailButtonState extends State<ContactsEmailButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 920;
    final isTablet = MediaQuery.of(context).size.width <= 919 &&
        MediaQuery.of(context).size.width >= 767;

    return MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (event) {
          setState(() {
            isHovered = true;
          });
        },
        onExit: (event) {
          setState(() {
            isHovered = false;
          });
        },
//[uri] function for the launcf of the email app and automatic email address
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
//[UI] For Desktop - email text.
            child: isDesktop
                ? FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Row(children: [
                      const ImageIcon(
                        AssetImage('assets/images/Envelope.png'),
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: const Text(
                          ' joelmontesdeoca@proton.me',
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                        ).contactsEmailTextStylesDesktop(),
                      ),
                    ]))
                : isTablet
                    ?
//[UI] For Tablet - email text.
                    FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Row(children: [
                          ImageIcon(
                            const AssetImage('assets/images/Envelope.png'),
                            color: isHovered ? Colores.green : Colors.white,
                          ),
                        ]))
                    :
//[UI] For Mobile - email text.
                    FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Row(children: [
                          ImageIcon(
                            const AssetImage('assets/images/Envelope.png'),
                            color: isHovered ? Colores.green : Colors.black,
                          ),
                        ]))));
  }
}
