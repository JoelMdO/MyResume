import 'package:flutter/material.dart';

class EducationText extends StatelessWidget {
  const EducationText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: const TextSpan(
            text: '- Aeronautical Engineering\n',
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.bold),
            children: <TextSpan>[
          TextSpan(
            text: '- Graduted 2003.\n\n',
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.normal),
          ),
          TextSpan(
            text: '- Computer Science Engineering\n',
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: '- Expected graduation date June 2024\n\n',
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.normal),
          ),
          TextSpan(
            text: '- Flight Dispatcher\n',
            style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ]));
  }
}
