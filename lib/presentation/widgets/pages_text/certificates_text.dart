import 'package:flutter/material.dart';

class CertificatesText extends StatelessWidget {
  const CertificatesText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
//Project Manager
      WidgetSpan(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Image.asset(
                'assets/images/PM.png',
                width: 30,
                height: 30,
              ))),
      const TextSpan(
          text: '- Project Manager',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 16,
              fontWeight: FontWeight.bold)),
      const TextSpan(
        text: '- by Google 2022.\n\n',
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 16,
            fontWeight: FontWeight.normal),
      ),
//Team Manager
      WidgetSpan(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Image.asset(
                'assets/images/Team.png',
                width: 30,
                height: 30,
              ))),
      const TextSpan(
          text: '- Team Manager',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 16,
              fontWeight: FontWeight.bold)),
      const TextSpan(
        text: '- by Harvard Business 2022.\n\n',
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 16,
            fontWeight: FontWeight.normal),
      ),
//Data Analyst
      WidgetSpan(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Image.asset(
                'assets/images/data.png',
                width: 30,
                height: 30,
              ))),
      const TextSpan(
          text: '- Data Analytics',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 16,
              fontWeight: FontWeight.bold)),
      const TextSpan(
        text: '- by Google 2022.\n\n',
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 16,
            fontWeight: FontWeight.normal),
      ),
//Management Models
      WidgetSpan(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Image.asset(
                'assets/images/management.png',
                width: 30,
                height: 30,
              ))),
      const TextSpan(
          text: '- Management Models for Decision Making\n\n',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 16,
              fontWeight: FontWeight.bold)),
//BOOTCAMP
      WidgetSpan(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Image.asset(
                'assets/images/bootcamp.png',
                width: 30,
                height: 30,
              ))),
      const TextSpan(
          text: '- Flutter and JavaScript Full Stack\n',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 16,
              fontWeight: FontWeight.bold)),
      const TextSpan(
        text: '     - On training by UTEL and BEDU.\n\n',
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 16,
            fontWeight: FontWeight.normal),
      ),
//UX
      WidgetSpan(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Image.asset(
                'assets/images/User.png',
                width: 30,
                height: 30,
              ))),
      const TextSpan(
          text: '- User Experience Designer (UX)\n',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 16,
              fontWeight: FontWeight.bold)),
      const TextSpan(
        text: '     - by Google 2022.\n\n',
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 16,
            fontWeight: FontWeight.normal),
      ),
//Aircraft Training
      WidgetSpan(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Image.asset(
                'assets/images/airplane.png',
                width: 30,
                height: 30,
              ))),
      const TextSpan(
          text: '- Aircraft Performance Training\n',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 16,
              fontWeight: FontWeight.bold)),
      const TextSpan(
        text:
            '- Airbus 320, 340 family, Boeing 748, 767, 757, Gulfstream, Global, Learjet, etc.\n',
        style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 16,
            fontWeight: FontWeight.normal),
      ),
    ]));
  }
}
