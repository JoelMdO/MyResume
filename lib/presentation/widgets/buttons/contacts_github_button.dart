import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/contacts/contacts_text_style.dart';
import 'package:resume/utils/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsGithubButton extends StatefulWidget {
  const ContactsGithubButton({super.key});

  @override
  State<ContactsGithubButton> createState() => _ContactsGithubButtonState();
}

class _ContactsGithubButtonState extends State<ContactsGithubButton> {
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
            launchUrl(Uri.parse('https://github.com/JoelMdO'));
          },
//[UI] For Desktop - Github text.
          child: isDesktop
              ? FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Row(children: [
                    const ImageIcon(
                      AssetImage('assets/images/GitHub.png'),
                      color: Colors.black,
                    ),
                    const Padding(padding: EdgeInsets.only(left: 5)),
                    const Text('github.com/JoelMdO')
                        .contactsGithubTextStylesDesktop(),
                  ]))
              :
//[UI] For Tablet/Mobile - Github text.
              ImageIcon(
                  const AssetImage('assets/images/GitHub.png'),
                  color: isHovered ? Colores.green : Colors.white,
                )),
    );
  }
}
