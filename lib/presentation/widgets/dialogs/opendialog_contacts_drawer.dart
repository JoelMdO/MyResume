import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/presentation/pages/tablet/page_1_home/main_home_p1t.dart';
import 'package:resume/presentation/widgets/drawer/contacts_drawer.dart';
import 'package:resume/presentation/widgets/buttons/download_button.dart';
import 'package:resume/presentation/pages/mobile/page_1_home/main_home_p1m.dart';
import 'package:resume/presentation/pages/desktop/page_1_home/main_home_p1d.dart';
import 'package:resume/utils/constants/colors.dart';

//OPEN DIALOG DRAWER//
class OpenDialogContactsDrawer {
  static Future<void> openDC(BuildContext context) async {
    double screenWidth = MediaQuery.of(context).size.width / 2;
    double screenHeight = MediaQuery.of(context).size.height / 2;
    final isDesktop = MediaQuery.of(context).size.width >= 920;
    final isTablet = MediaQuery.of(context).size.width >= 767;
    bool isHovered = false;

    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
//EDUCATION DIALOG FIRS PART//
          return AlertDialog(
              title: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colores.blue, Colores.lightblue])),
                  width: screenWidth / 2,
                  height: screenHeight * 0.1,
                  child: Padding(
                      padding: const EdgeInsets.only(top: 5, left: 10),
//CONTACTS DIALOG TITLE//
                      child: Text(
                        'CONTACT ME...',
                        style: GoogleFonts.montserrat(
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                            fontSize: 20),
                      ))),

              /// CONTACTS DIALOG TEXT//
              /// [ContactsDrawer] Details to contact obtained from contactos_drawer_mobile.dart
              content: const ContactsDrawer(),
              actions: <Widget>[
                StatefulBuilder(
                    builder: (BuildContext context, StateSetter setState) {
                  return MouseRegion(
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
                      child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor:
                                isHovered ? Colores.darkblue : Colores.blue,
                          ),
                          onPressed: () {
                            ///--Navigator to closing dialog, navigate to page 1 mobile
                            if (isDesktop) {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const HomePageDesktop()),
                                  (Route<dynamic> route) => false);
                            } else if (isTablet) {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const HomePageTablet()),
                                  (Route<dynamic> route) => false);
                            } else {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const HomePageMobile()),
                                  (Route<dynamic> route) => false);
                            }
                          },
                          child: Text('CLOSE',
                              style: (GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              )))));
                }),
//[DOWNLOAD BUTTON] to download the cv in pdf file.
                const DownloadButton()
              ]);
        });
  }
}
