import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/utils/constants/colors.dart';

class CareerText extends StatefulWidget {
  final Function(bool) onExpansionChanged;
  const CareerText({Key? key, required this.onExpansionChanged})
      : super(key: key);

  @override
  State<CareerText> createState() => _CareerTextState();
}

class _CareerTextState extends State<CareerText> {
  bool isLastExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: SingleChildScrollView(
            child: Column(children: [
          SizedBox(
            width: 1200,

            /// QE SUMMARY
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
                            child: AutoSizeText(
                              maxFontSize: 25,
                              minFontSize: 15,
                              maxLines: 2,
                              'Senior Flight Dispatcher.',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          subtitle: Align(
                              alignment: Alignment.center,
                              child: AutoSizeText(
                                maxFontSize: 16,
                                minFontSize: 14,
                                maxLines: 2,
                                'Qatar Executive (Actual)',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54),
                              )));
                    },
                    body: Column(children: [
                      AutoSizeText(
                          maxFontSize: 14,
                          minFontSize: 10,
                          'Key Achievements:\n',
                          style: GoogleFonts.montserrat(
                            fontWeight: FontWeight.bold,
                            color: Colores.red,
                          )),
                      RichText(
                          text: TextSpan(
                              text:
                                  ' - Director and developer of the Charter Flight Feasibility Tool,',
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                            TextSpan(
                                text:
                                    ' increased the information accuracy by 95%, workload and reply time frame decreased to less than 20 minutes, and the dispatch department workload by 50%. \n\n',
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                )),
                            TextSpan(
                                text:
                                    '- Project Manager and developer of the IOC Flight Coordination, Logistics, and Ground Services Training Manual.',
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                )),
                            TextSpan(
                                text:
                                    '\n Developed a comprehensive and interactive training manual that helped to ensure the smooth coordination of flights, logistics, and ground services for the IOC.\n\n',
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                )),
                            TextSpan(
                                text:
                                    ' - RCP flight plan Trainer and USA Customs/Immigration process',
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                )),
                            TextSpan(
                                text:
                                    ' during the North America/South America Operations implementation, reducing 50% the use of technical stops by the use of the technic.\n\n',
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                )),
                            TextSpan(
                                text:
                                    ' - Project Manager FIFA 2018 Flight Logistics Planning',
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                )),
                            TextSpan(
                                text:
                                    ' Managed the logistics of 50 aircraft, parking, slots around 10 cities with a 95% schedule accuracy as per VVIP schedule requirements.',
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                )),
                          ]))
                    ]),
                  ),

                  /// FLYMEX SUMMARY
                  ExpansionPanelRadio(
                    value: 2,
                    canTapOnHeader: true,
                    headerBuilder: (context, isExpanded) {
                      return ListTile(
                          title: Align(
                            alignment: Alignment.center,
                            child: AutoSizeText(
                              maxFontSize: 25,
                              minFontSize: 15,
                              'Duty Manager.',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          subtitle: Align(
                              alignment: Alignment.center,
                              child: AutoSizeText(
                                maxFontSize: 16,
                                minFontSize: 8,
                                maxLines: 1,
                                'FlyMex (2014-2016)',
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54),
                              )));
                    },
                    body: Column(children: [
                      Text('Key Achievements:\n',
                          style: GoogleFonts.montserrat(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colores.red,
                          )),
                      RichText(
                          text: TextSpan(
                              text:
                                  ' - Management and Trainer of North Atlantic Operations implementation for OCC.',
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                            TextSpan(
                                text:
                                    ' Results: 0% flight delay and rerouting due to errors during the planning stage. \n\n',
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                )),
                            TextSpan(
                                text:
                                    '- Established the flight routes control system database,',
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                )),
                            TextSpan(
                                text:
                                    '\n decreased the flight planning workload by 35% and re-loading flight plans by 50%\n\n',
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                )),
                            TextSpan(
                                text:
                                    ' - Support on the IOSA and Mexico CAA annual audits for OCC.',
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                )),
                          ]))
                    ]),
                  ),

                  /// GHS MTY SUMMARY
                  ExpansionPanelRadio(
                    value: 3,
                    canTapOnHeader: true,
                    headerBuilder: (context, isExpanded) {
                      return ListTile(
                          title: Align(
                            alignment: Alignment.center,
                            child: AutoSizeText(
                              maxFontSize: 25,
                              minFontSize: 15,
                              'GHS Monterrey Airport Manager.',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          subtitle: Align(
                              alignment: Alignment.center,
                              child: AutoSizeText(
                                maxFontSize: 16,
                                minFontSize: 14,
                                'Menzies Aviation (2013-2014)',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54),
                              )));
                    },
                    body: Column(children: [
                      Text('Key Achievements:\n',
                          style: GoogleFonts.montserrat(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colores.red,
                          )),
                      RichText(
                          text: TextSpan(
                              text:
                                  ' - Business process re-engineering for Monterrey Airport GHS,',
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                            TextSpan(
                                text:
                                    ' achieved a 0% GHS delay rate during the 2013 winter season, led a team of 50 staff and 3 regional airport managers in the construction of a teamwork, communication, and excellence culture, resulting in a significant improvement in efficiency and customer service.\n\n',
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                )),
                          ]))
                    ]),
                  ),

                  /// AMX SUMMARY
                  ExpansionPanelRadio(
                    value: 4,
                    canTapOnHeader: true,
                    headerBuilder: (context, isExpanded) {
                      return ListTile(
                          title: Align(
                            alignment: Alignment.center,
                            child: AutoSizeText(
                              maxFontSize: 25,
                              minFontSize: 15,
                              'Flight Crew Training Coordinator.',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          subtitle: Align(
                              alignment: Alignment.center,
                              child: AutoSizeText(
                                maxFontSize: 16,
                                minFontSize: 14,
                                'Aeromexico Connect (2011-2013)',
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54),
                              )));
                    },
                    body: Column(children: [
                      Text('Key Achievements:\n',
                          style: GoogleFonts.montserrat(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colores.red,
                          )),
                      RichText(
                          text: TextSpan(
                              text:
                                  ' - Project Manager for the implementation of the full flight simulator training abroad program',
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                            TextSpan(
                                text:
                                    '  within 4 different training centres worldwide, maximizing training capacity, resulting in a 20% reimbursement of the initial budget due to cost savings. \n\n',
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                )),
                          ]))
                    ]),
                  ),

                  ///MXA SUMMARY
                  ExpansionPanelRadio(
                    value: 5,
                    canTapOnHeader: true,
                    headerBuilder: (context, isExpanded) {
                      return ListTile(
                          title: Align(
                            alignment: Alignment.center,
                            child: AutoSizeText(
                              maxFontSize: 25,
                              minFontSize: 15,
                              'Flight Dispatcher Supervisor.',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          subtitle: Align(
                              alignment: Alignment.center,
                              child: AutoSizeText(
                                maxFontSize: 16,
                                minFontSize: 14,
                                'Mexicana de Aviacion (2003-2010)',
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54),
                              )));
                    },
                    body: Column(children: [
                      Text('Key Achievements:\n',
                          style: GoogleFonts.montserrat(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colores.red,
                          )),
                      RichText(
                          text: TextSpan(
                              text:
                                  ' - Project Manager and Trainer of Amadeus Weight and Balance and EDS Flight Planning software implementation,',
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              children: <TextSpan>[
                            TextSpan(
                                text:
                                    ' successfully implemented the new software within budget and on time while maximizing user satisfaction.\n\n',
                                style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black,
                                )),
                          ]))
                    ]),
                  )
                ]),
          ),
        ])));
  }
}
