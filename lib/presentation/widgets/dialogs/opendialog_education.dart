import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/presentation/pages/mobile/page_1_home/main_home_p1m.dart';
import 'package:resume/presentation/pages/desktop/page_1_home/main_home_p1d.dart';
import 'package:resume/presentation/pages/tablet/page_1_home/main_home_p1t.dart';
import 'package:resume/presentation/widgets/pages_text/certificates_text.dart';
import 'package:resume/presentation/widgets/pages_text/education_text.dart';
import 'package:resume/utils/constants/colors.dart';

//OPEN DIALOG - EDUCATION//
class OpenDialogEducation {
  static Future<void> openED(BuildContext context) async {
    bool isHovered = false;
    double screenWidth = MediaQuery.of(context).size.width / 2;
    double screenHeight = MediaQuery.of(context).size.height / 2;
    final isDesktop = MediaQuery.of(context).size.width >= 920;
    final isTablet = MediaQuery.of(context).size.width >= 767;

//EDUCATION DIALOG FIRS PART//
    return showDialog<void>(
        context: context,
        builder: (BuildContext context) {
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
                    //EDUCATION DIALOG TITLE//
                    child: Text(
                      'EDUCATION:',
                      style: GoogleFonts.montserrat(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          fontSize: 20),
                    )),
                // )
              ),
//EDUCATION DIALOG TEXT//
              content: const EducationText(),
              actions: <Widget>[
                Row(mainAxisAlignment: MainAxisAlignment.end, children: [
//CERTIFICATES BUTTON AND DIALOG//
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
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                      // [Container] TO CREATE A BOX FOR THE TITLE OF THE DIALOG WITH GRADIENT COLOR FILL
                                      title: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              gradient: const LinearGradient(
                                                  begin: Alignment.centerLeft,
                                                  end: Alignment.centerRight,
                                                  colors: [
                                                    Colores.blue,
                                                    Colores.lightblue,
                                                  ])),
                                          width: screenWidth / 2,
                                          height: screenHeight * 0.1,
                                          child: const Padding(
                                              padding: EdgeInsets.only(
                                                  top: 5, left: 10),
                                              child: Text(
                                                'MAIN CERTIFICATES:',
                                                style: TextStyle(
                                                    fontStyle: FontStyle.italic,
                                                    fontWeight: FontWeight.w800,
                                                    fontFamily: 'Montserrat',
                                                    color: Colors.white,
                                                    fontSize: 20),
                                              ))),

                                      /// [CerticiatesText] where the text information is store in the pages folder
                                      content: const CertificatesText(),
                                      actions: <Widget>[
                                        StatefulBuilder(builder:
                                            (BuildContext context,
                                                StateSetter setState) {
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
                                                  backgroundColor: isHovered
                                                      ? Colores.darkblue
                                                      : Colores.blue,
                                                ),
                                                onPressed: () {
                                                  //NAVIGATOR TO CLOSING EDUCATION AND CERTIFICATES DIALOGS
                                                  if (isDesktop) {
                                                    Navigator.pushAndRemoveUntil(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (BuildContext
                                                                    context) =>
                                                                const HomePageDesktop()),
                                                        (Route<dynamic>
                                                                route) =>
                                                            false);
                                                  }
                                                  if (isTablet) {
                                                    Navigator.pushAndRemoveUntil(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (BuildContext
                                                                    context) =>
                                                                const HomePageTablet()),
                                                        (Route<dynamic>
                                                                route) =>
                                                            false);
                                                  } else {
                                                    Navigator.pushAndRemoveUntil(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (BuildContext
                                                                    context) =>
                                                                const HomePageMobile()),
                                                        (Route<dynamic>
                                                                route) =>
                                                            false);
                                                  }
                                                },
                                                child: const Text('CLOSE',
                                                    style: (TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: 'Montserrat',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 15,
                                                    )))),
                                          );
                                        })
                                      ]);
                                });
                          },
                          child: const Text('CERTIFICATES',
                              style: (TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                              )))),
                    );
                  }),
//CLOSE BUTTON//
                  Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: StatefulBuilder(builder:
                          (BuildContext context, StateSetter setState) {
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
                                backgroundColor: isHovered
                                    ? Colores.darkblue
                                    : Colores.lightblue,
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('CLOSE',
                                  style: (TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                  )))),
                        );
                      }))
                ])
              ]);
        });
  }
}
