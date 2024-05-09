import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/contacts/contacts_text_style.dart';
import 'package:resume/utils/constants/colors.dart';
import 'package:resume/utils/constants/mixin/buttons_mixin.dart';
import 'package:resume/utils/constants/screen_size.dart';

class ContactsButton extends StatefulWidget {
  final String type;

  const ContactsButton({super.key, required this.type});

  @override
  State<ContactsButton> createState() => _ContactsButtonState();
}

class _ContactsButtonState extends State<ContactsButton> with ButtonsMixin {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    ScreenType myScreenType = ScreenType(context);

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
            onPressed: () {
              launchToUrl(widget.type);
            },
//[UI] For Desktop - email text.
            child: myScreenType.isDesktop
                ? FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Row(children: [
                      ImageIcon(
                        AssetImage(image(widget.type)),
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          name(widget.type),
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
                      AssetImage(image(widget.type)),
                      color: isHovered
                          ? Colores.green
                          : myScreenType.isTablet
                              ? Colors.black
                              : Colors.white,
                    ),
                  )));
  }
}
