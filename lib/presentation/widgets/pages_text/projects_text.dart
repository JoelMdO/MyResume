import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/utils/constants/colors.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ProjectText extends StatefulWidget {
  final Function(bool) onExpansionChanged;
  const ProjectText({Key? key, required this.onExpansionChanged})
      : super(key: key);

  @override
  State<ProjectText> createState() => _ProjectTextState();
}

class _ProjectTextState extends State<ProjectText> {
  bool isLastExpanded = false;

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width <= 550;
    return Align(
        alignment: Alignment.center,
        child: SingleChildScrollView(
            child: Column(children: [
          SizedBox(
            width: 1200,
//----------CHARTER FEASIBILITY TOOL
            child: ExpansionPanelList.radio(
                dividerColor: Colores.blue,
                expandedHeaderPadding: const EdgeInsets.all(10),
                expansionCallback: (panelIndex, isExpanded) {
                  setState(() {
                    isLastExpanded = isExpanded;
                    //Past the value to the callback
                    widget.onExpansionChanged(isLastExpanded);
                  });
                },
                children: [
                  ExpansionPanelRadio(
                    value: 1,
                    canTapOnHeader: true,
                    headerBuilder: (context, isExpanded) {
                      return ListTile(
                          title: Align(
                              alignment: Alignment.center,
                              child: Row(children: [
                                AutoSizeText(
                                  'Charter Flight Feasibility Tool',
                                  maxFontSize: 25,
                                  minFontSize: 15,
                                  maxLines: 2,
                                  style: GoogleFonts.montserrat(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                const Padding(
                                    padding: EdgeInsets.only(left: 5)),
                                SizedBox(
                                  width: isMobile ? 60 : 100,
                                  height: isMobile ? 60 : 100,
                                  child: Image.asset(
                                      'assets/images/CharterTool.png'),
                                ),
                              ])),
                          subtitle: Align(
                            alignment: Alignment.bottomRight,
                            child: AutoSizeText(
                              maxFontSize: 16,
                              minFontSize: 14,
                              '- Director and developer; results: 50% sales department complaints reduction, accuracy of the information increased by 95% and reduction of the reply time frame to only 20 minutes. ',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54),
                            ),
                          ));
                    },
                    body: Column(children: [
                      AutoSizeText('Learned:',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            color: Colores.red,
                          )),
                      AutoSizeText(
                          maxFontSize: 14,
                          minFontSize: 10,
                          '- Focus on your internal clients (colleagues), will improve workload and enviroment',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ))
                    ]),
                  ),

                  //----------PERMITS HANDBOOK
                  ExpansionPanelRadio(
                    value: 2,
                    canTapOnHeader: true,
                    headerBuilder: (context, isExpanded) {
                      return ListTile(
                          title: Align(
                              alignment: Alignment.center,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: isMobile ? 60 : 100,
                                    height: isMobile ? 60 : 100,
                                    child: Image.asset(
                                      'assets/images/Permits.png',
                                    ),
                                  ),
                                  AutoSizeText(
                                    maxFontSize: 25,
                                    minFontSize: 15,
                                    'Permits Interactive Handbook',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ],
                              )),
                          subtitle: Align(
                            alignment: Alignment.bottomRight,
                            child: AutoSizeText(
                              maxFontSize: 16,
                              minFontSize: 14,
                              '- Developer to provide clear and concise instructions about the method to obtain flight clearances and reduce the time frame error requests by 50%, interactive for easy use and standardize of the information.',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54),
                            ),
                          ));
                    },
                    body: Column(children: [
                      AutoSizeText(
                          maxFontSize: 14,
                          minFontSize: 10,
                          'Learned:',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            color: Colores.red,
                          )),
                      AutoSizeText(
                          maxFontSize: 14,
                          minFontSize: 10,
                          '- Documentation with a touch of action, made a handbook more useful',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ))
                    ]),
                  ),
//----------ROSTER APP
                  ExpansionPanelRadio(
                    value: 3,
                    canTapOnHeader: true,
                    headerBuilder: (context, isExpanded) {
                      return ListTile(
                          title: Align(
                            alignment: Alignment.center,
                            child: Row(children: [
                              AutoSizeText(
                                maxFontSize: 25,
                                minFontSize: 15,
                                'Staff Roster App',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              const Padding(padding: EdgeInsets.only(left: 5)),
                              SizedBox(
                                width: isMobile ? 60 : 100,
                                height: isMobile ? 60 : 100,
                                child: Image.asset(
                                  'assets/images/app.png',
                                ),
                              ),
                            ]),
                          ),
                          subtitle: Align(
                            alignment: Alignment.center,
                            child: AutoSizeText(
                              maxFontSize: 16,
                              minFontSize: 14,
                              '- Director and developer to improve the staff roster access during out of the office timings, facilitating the communication and interaction between colleagues.',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54),
                            ),
                          ));
                    },
                    body: Column(children: [
                      AutoSizeText(
                          maxFontSize: 14,
                          minFontSize: 10,
                          'Learning:',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            color: Colores.red,
                          )),
                      AutoSizeText(
                          maxFontSize: 14,
                          minFontSize: 10,
                          '- On the process of ...',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ))
                    ]),
                  )
                ]),
          )
        ])));
  }
}
