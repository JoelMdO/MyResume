import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/contacts/contacts_text_style.dart';
import 'package:resume/utils/constants/colors.dart';
import 'package:resume/utils/constants/screen_size.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsButton extends StatefulWidget {
  final String type;

  const ContactsButton({super.key, required this.type});

  @override
  State<ContactsButton> createState() => _ContactsButtonState();
}

class _ContactsButtonState extends State<ContactsButton> {
  bool isHovered = false;
  late bool isMail, isGithub;
  String name = '';
  late String image, urlGit, urlLink;

  @override
  Widget build(BuildContext context) {
    ScreenType myScreenType = ScreenType(context);

    switch (widget.type) {
      case 'email':
        isMail = true;
        image = 'assets/images/Envelope.png';
        name = ' joelmontesdeoca@proton.me';
      case 'github':
        isGithub = true;
        image = 'assets/images/github-logo.png';
        name = 'github.com/JoelMdO';
        urlGit = 'https://github.com/JoelMdO';
      case 'linkedin':
        image = 'assets/images/LinkedIn.png';
        name = 'joel-montesdeoca-lopez';
        urlLink = 'https://www.linkedin.com/in/joel-montesdeoca-lopez';
    }
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
              if (isMail) {
                final url =
                    Uri(scheme: 'mailto', path: 'joelmontesdeoca@proton.me');
                if (await canLaunchUrl(url)) {
                  launchUrl(url);
                } else {
                  // ignore: avoid_print
                  print("Can't launch $url");
                }
              } else {
                launchUrl(Uri.parse(isGithub ? urlGit : urlLink));
              }
            },
//[UI] For Desktop - email text.
            child: myScreenType.isDesktop
                ? FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Row(children: [
                      ImageIcon(
                        AssetImage(image),
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          name,
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                        ).contactsEmailTextStylesDesktop(),
                      ),
                    ]))
                :
//[UI] For Tablet / Mobile - email text.
                IconTheme(
                    data: const IconThemeData(color: null),
                    child: ImageIcon(
                      AssetImage(image),
                      color: isHovered ? Colores.green : Colors.white,
                    ),
                  )));
  }
}
