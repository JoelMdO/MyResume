import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/utils/constants/colors.dart';
import 'package:url_launcher/url_launcher.dart';

//CONTACTS TRIANGLE RIGHT COLUMN //

class ContactsRightColumn extends StatefulWidget {
  const ContactsRightColumn({
    Key? key,
  }) : super(key: key);

  @override
  ContactsRightColumnState createState() => ContactsRightColumnState();
}

class ContactsRightColumnState extends State<ContactsRightColumn> {
  @override
  Widget build(BuildContext context) {
    bool isHovered = false;
    final isDesktop = MediaQuery.of(context).size.width >= 920;

    return isDesktop
        ? Stack(
            alignment: AlignmentDirectional.topStart,
            fit: StackFit.loose,
            children: [
                Padding(
                  padding: const EdgeInsets.only(left: 35),
                  child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Row(children: [
                        const ImageIcon(
                          AssetImage('assets/images/Phone.png'),
                          color: Colors.black,
                        ),
                        const Padding(padding: EdgeInsets.only(left: 5)),
                        Text(
                          '+974-5502-1236',
                          style: GoogleFonts.montserrat(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                            color: Colors.black,
                          ),
                        ),
                      ])),
                ),
//-- EMAIL /
                Padding(
                    padding: const EdgeInsets.only(left: 5, top: 20),
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: TextButton(
                        onPressed: () async {
                          final url = Uri(
                              scheme: 'mailto',
                              path: 'joelmontesdeoca@proton.me');
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
                      ),
                    )),

//-- LINKEDIN//
                Padding(
                    padding: const EdgeInsets.only(left: 20, top: 50),
                    child: MouseRegion(
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
                                  const Padding(
                                      padding: EdgeInsets.only(left: 5)),
                                  RichText(
                                      text: TextSpan(children: [
                                    TextSpan(
                                        text: 'joel-montesdeoca-lopez',
                                        style: GoogleFonts.montserrat(
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w800,
                                          color: Colors.black,
                                        )),
                                  ]))
                                ]))))),
//-- GITHUB//
                Padding(
                    padding: const EdgeInsets.only(left: 35, top: 85),
                    child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: TextButton(
                            onPressed: () {
                              launchUrl(
                                  Uri.parse('https://github.com/JoelMdO'));
                            },
                            child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Row(children: [
                                  const ImageIcon(
                                    AssetImage('assets/images/GitHub.png'),
                                    color: Colors.black,
                                  ),
                                  const Padding(
                                      padding: EdgeInsets.only(left: 5)),
                                  Text('github.com/JoelMdO',
                                      style: GoogleFonts.montserrat(
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ))
                                ])))))
              ])
        : Stack(
            alignment: AlignmentDirectional.topStart,
            fit: StackFit.loose,
            children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Row(children: [
                        const ImageIcon(
                          AssetImage('assets/images/Phone.png'),
                          color: Colors.white,
                        ),
                        const Padding(padding: EdgeInsets.only(left: 5)),
                        Text(
                          '+974-5502-1236',
                          style: GoogleFonts.montserrat(
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                            color: Colors.white,
                          ),
                        ),
                      ])),
                ),
//-- EMAIL /
                Padding(
                    padding: const EdgeInsets.only(left: 10, top: 20),
                    child: StatefulBuilder(builder: (context, setState) {
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
                          child: TextButton(
                              onPressed: () async {
                                final url = Uri(
                                    scheme: 'mailto',
                                    path: 'joelmontesdeoca@proton.me');
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
                                    ImageIcon(
                                      const AssetImage(
                                          'assets/images/Envelope.png'),
                                      color: isHovered
                                          ? Colores.green
                                          : Colors.white,
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Text(
                                          ' Write me...',
                                          style: GoogleFonts.montserrat(
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.w600,
                                              color: isHovered
                                                  ? Colores.green
                                                  : Colors.white,
                                              fontSize: 12),
                                          softWrap: false,
                                          overflow: TextOverflow.ellipsis,
                                        ))
                                  ]))));
                    })),

//-- LINKEDIN//
                Padding(
                    padding: const EdgeInsets.only(left: 20, top: 95),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          StatefulBuilder(builder: (context, setState) {
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
                                child: TextButton(
                                    onPressed: () {
                                      launchUrl(Uri.parse(
                                          'https://www.linkedin.com/in/joel-montesdeoca-lopez'));
                                    },
                                    child: FittedBox(
                                        fit: BoxFit.fitWidth,
                                        child: Row(children: [
                                          ImageIcon(
                                            const AssetImage(
                                                'assets/images/LinkedIn.png'),
                                            color: isHovered
                                                ? Colores.green
                                                : Colors.white,
                                          )
                                        ]))));
                          }),

//-- GITHUB//
                          Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child:
                                  StatefulBuilder(builder: (context, setState) {
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
                                    child: TextButton(
                                        onPressed: () {
                                          launchUrl(Uri.parse(
                                              'https://github.com/JoelMdO'));
                                        },
                                        child: FittedBox(
                                            fit: BoxFit.fitWidth,
                                            child: Row(children: [
                                              ImageIcon(
                                                const AssetImage(
                                                    'assets/images/GitHub.png'),
                                                color: isHovered
                                                    ? Colores.green
                                                    : Colors.white,
                                              ),
                                            ]))));
                              }))
                        ]))
              ]);
  }
}
