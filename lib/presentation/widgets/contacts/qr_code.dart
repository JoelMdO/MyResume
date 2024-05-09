import 'package:flutter/material.dart';
import 'package:resume/utils/constants/colors.dart';

class QRCode extends StatelessWidget {
  const QRCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(border: Border.all(color: Colores.darkblue)),
        child: Image.asset(
          'assets/images/QR Joe.png',
          height: 120,
        ));
  }
}
