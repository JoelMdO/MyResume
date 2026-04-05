import 'package:flutter/material.dart';
import 'package:resume/presentation/widgets/drawer/text_styles_drawer.dart';
import 'package:resume/utils/constants/screen_size.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:resume/presentation/widgets/drawer/library_contact_details.dart';

//CONTACTOS DRAWER //
class ContactsDrawer extends StatelessWidget {
  const ContactsDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenSize myScreen = ScreenSize(context);
    return SizedBox(
      width: 150,
      height: myScreen.screenHeight * 0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 150,
            height: 150,
            child: Image.asset('assets/images/QR Joe.png'),
          ),
          const SizedBox(
            height: 10,
          ),
          //-- PHONE /
          FittedBox(
              fit: BoxFit.fitWidth,
              child: Row(children: [
                const ImageIcon(
                  AssetImage('assets/images/Phone.png'),
                ),
                const Padding(padding: EdgeInsets.only(left: 5)),
                Text(phoneNumber).drawerPhoneTextStyle(),
              ])),
          //-- EMAIL /
          MouseRegion(
              cursor: SystemMouseCursors.click,
              child: TextButton(
                onPressed: () async {
                  final url = Uri(scheme: 'mailto', path: email);
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
                        child: Text(email).drawerEmailTextStyle(),
                      ),
                    ])),
              )),
          //-- CALENDLY //
          MouseRegion(
              cursor: SystemMouseCursors.click,
              child: TextButton(
                  onPressed: () {
                    launchUrl(Uri.parse(calendyUrl));
                  },
                  child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Row(children: [
                        const ImageIcon(
                          AssetImage('assets/images/calendly.png'),
                          color: Colors.black,
                        ),
                        const Padding(padding: EdgeInsets.only(left: 5)),
                        Text(bookAppointment).drawerLinksTextStyle(),
                      ])))),
          //-- LINKEDIN//
          MouseRegion(
              cursor: SystemMouseCursors.click,
              child: TextButton(
                  onPressed: () {
                    launchUrl(Uri.parse(linkedinUrl));
                  },
                  child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Row(children: [
                        const ImageIcon(
                          AssetImage('assets/images/LinkedIn.png'),
                          color: Colors.black,
                        ),
                        const Padding(padding: EdgeInsets.only(left: 5)),
                        Text(linkedin).drawerLinksTextStyle(),
                      ])))),
          //-- GITHUB//

          MouseRegion(
              cursor: SystemMouseCursors.click,
              child: TextButton(
                  onPressed: () {
                    launchUrl(Uri.parse(githubUrl));
                  },
                  child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Row(children: [
                        const ImageIcon(
                          AssetImage('assets/images/github-logo.png'),
                          color: Colors.black,
                        ),
                        const Padding(padding: EdgeInsets.only(left: 5)),
                        Text(giitHub).drawerLinksTextStyle(),
                      ])))),
        ],
      ),
    );
  }
}
