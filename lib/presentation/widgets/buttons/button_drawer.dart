import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/presentation/pages/tablet/page_3_career/main_career_p3t.dart';
import 'package:resume/presentation/widgets/dialogs/opendialog_contacts_drawer.dart';
import 'package:resume/presentation/pages/mobile/page_1_home/main_home_p1m.dart';
import 'package:resume/presentation/pages/mobile/page_2_techstack/main_techstack_p2m.dart';
import 'package:resume/presentation/pages/mobile/page_3_career/main_career_p3m.dart';
import 'package:resume/presentation/pages/mobile/page_4_projects/main_projects_p4m.dart';
import 'package:resume/presentation/pages/desktop/page_1_home/main_home_p1d.dart';
import 'package:resume/presentation/pages/desktop/page_2_techstack/main_techstack_p2d.dart';
import 'package:resume/presentation/pages/desktop/page_3_career/main_career_p3d.dart';
import 'package:resume/presentation/pages/desktop/page_4_projects/main_projects_p4d.dart';
import 'package:resume/utils/constants/colors.dart';

//--MENU BUTTON-- //
class ButtonDrawer extends StatefulWidget {
  final int page;
  final String pagename;

  const ButtonDrawer({
    Key? key,
    required this.page,
    required this.pagename,
  }) : super(key: key);

  @override
  ButtonDrawerState createState() => ButtonDrawerState();
}

class ButtonDrawerState extends State<ButtonDrawer> {
  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 920;
    final isTablet = MediaQuery.of(context).size.width >= 767;

    bool isHovered = false;

    return Row(children: [
      DelayedDisplay(
          delay: const Duration(seconds: 1),
          child: FadeInLeft(
              duration: const Duration(seconds: 1),
              child: const SizedBox(
                  width: 75,
                  height: 75,
                  child: Image(
                      image: AssetImage(
                    'assets/images/BlackWing.png',
                  ))))),
      //TEXT TITLE
      DelayedDisplay(
          delay: const Duration(milliseconds: 200),
          //--[GestureDetector] To create a button from the image
          child: GestureDetector(onTap: () {
            //PAGE 1  Home //
            //--[widget.page is a value required to the widget and will be given from the drawer values]
            if (widget.page == 1) {
              if (isDesktop) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const HomePageDesktop()));
              } else if (isTablet) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const CareerPageTablet()));
              } else {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const HomePageMobile()));
              }
            }
            //PAGE 2  Techstack//
            else if (widget.page == 2) {
              if (isDesktop) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const TechStackPageDesktop()));
              } else if (isTablet) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const CareerPageTablet()));
              } else {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const TechStackPageMobile()));
              }
            }
            //PAGE 3  Career //
            else if (widget.page == 3) {
              if (isDesktop) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const CareerPageDesktop()));
              } else if (isTablet) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const CareerPageTablet()));
              } else {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const CareerPageMobile()));
              }
            }
            //PAGE 4  Projects //
            else if (widget.page == 4) {
              if (isDesktop) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const ProjectsPageDesktop()));
              } else if (isTablet) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const CareerPageTablet()));
              } else {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const ProjectsPageMobile()));
                //PAGE 5  Contacts //
              }
            } else {
              OpenDialogContactsDrawer.openDC(context);
            }
          },
              //--[IgnorePointer] To allow the text to get the GestureDetector
              //--[MouseRegion] To allow the mouse icon to change and advise the user it can be clicked
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
                child: Container(
                  decoration: BoxDecoration(
                      border: isHovered
                          ? const Border(
                              bottom: BorderSide(color: Colores.green))
                          : null),
                  child: IgnorePointer(
                    child: AnimatedTextKit(
                      repeatForever: false,
                      animatedTexts: [
                        TypewriterAnimatedText(
                            //--[widget.pagename] Obtains the name of the page to be included as button text
                            widget.pagename,
                            textStyle: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.w800))
                      ],
                    ),
                  ),
                ));
          })))
    ]);
  }
}
