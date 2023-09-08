import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/contacts/contacts_text_style.dart';
import 'package:resume/utils/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsLinkedinButton extends StatefulWidget {
  const ContactsLinkedinButton({super.key});

  @override
  State<ContactsLinkedinButton> createState() => _ContactsLinkedinButtonState();
}

class _ContactsLinkedinButtonState extends State<ContactsLinkedinButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 920;

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
//[uri] function for the launch of Github site.
        child: TextButton(
            onPressed: () {
              launchUrl(Uri.parse(
                  'https://www.linkedin.com/in/joel-montesdeoca-lopez'));
            },
//[UI] For Desktop - Linkedin text.
            child: isDesktop
                ? FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Row(children: [
                      const ImageIcon(
                        AssetImage('assets/images/LinkedIn.png'),
                        color: Colors.black,
                      ),
                      const Padding(padding: EdgeInsets.only(left: 5)),
                      const Text('joel-montesdeoca-lopez')
                          .contactsLinkedinTextStylesDesktop(),
                    ]))
                :
//[UI] For Tablet/Mobile - Github text.
                FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Row(children: [
                      ImageIcon(
                        const AssetImage('assets/images/LinkedIn.png'),
                        color: isHovered ? Colores.green : Colors.white,
                      )
                    ]))));
  }
}
